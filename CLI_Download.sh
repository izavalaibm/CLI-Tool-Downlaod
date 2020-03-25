#!/bin/bash

## Curl commands for each OS
download()
{
    url="https://icp-console.mcmmah-105400-0143c5dd31acd8e030a1d6e0ab1380e3-0001.us-east.containers.appdomain.cloud:443/api/cli/"
    ocUrl="https://mirror.openshift.com/pub/openshift-v4/clients/oc/latest"

    if [[ $1 == "1" ]];then 
        echo "downloading IBM Cloud Pak CLI" 
        curl -kLo cloudctl.exe "${url}cloudctl-${2}.exe"
        echo "downloading Kubernetes CLI" 
        curl -kLo kubectl.exe     "${url}kubectl-${2}.exe"
        echo "downloading Helm CLI" 
        curl -kLo helm.tar.gz "${url}helm-${2}.tar.gz"
        echo "downloading Istio CLI" 
        curl -kLo istioctl.exe "${url}istioctl-${2}.exe"
        echo "downloading Calico CLI" 
        curl -kLo calicoctl.exe "${url}calicoctl-${2}.exe"
        echo "downloading oc CLI"
        curl -kLo oc "${ocUrl}/windows/oc.zip"

    else
        echo "downloading IBM Cloud Pak CLI" 
        curl -kLo cloudctl "${url}cloudctl-${2}"
        echo "downloading Kubernetes CLI" 
        curl -kLo kubectl     "${url}kubectl-${2}"
        echo "downloading Helm CLI" 
        curl -kLo helm.tar.gz "${url}helm-${2}.tar.gz"
        tar -zxvf helm.tar.gz
        echo "downloading Istio CLI" 
        curl -kLo istioctl "${url}istioctl-${2}"
        echo "downloading Calico CLI" 
        curl -kLo calicoctl "${url}calicoctl-${2}" 
        echo "downloading OpenShift Client CLI"
        if [[ $1 == "3" ]];then
            curl -kLo oc.tar.gz "${ocUrl}/linux/oc.tar.gz"
            linux-amd64/helm
            sudo mv linux-amd64/helm /usr/local/bin/helm
            rm -rf linux-amd64
        else 
            curl -kLo oc.tar.gz "${ocUrl}/macosx/oc.tar.gz"
            chmod 775 darwin-amd64
            sudo mv darwin-amd64/helm /usr/local/bin/helm
            rm -rf darwin-amd64
            
        fi
        tar -zxvf oc.tar.gz
        chmod 755 cloudctl oc kubectl istioctl calicoctl     
        sudo mv oc /usr/local/bin/oc
        sudo mv cloudctl /usr/local/bin/cloudctl   
        sudo mv kubectl /usr/local/bin/kubectl
        sudo mv istioctl /usr/local/bin/istioctl 
        sudo mv calicoctl /usr/local/bin/calicoctl

        ## Clean up 
        rm helm.tar.gz	oc.tar.gz
    fi
}


## Gets OS, if OS is supported it will download the needed CLI. If not suported or user wants to download a specific 
## OS they can download it by selecting which OS they want to dowload the CLI for
unameOut="$(uname -s)"
case "${unameOut}" in
    Linux*)
    linV="$(uname -p)"
    if [[ $linV == *"x86_64"* ]];then
        echo "Installing CLI for Linux"  
        download 3 linux-amd64 exit 
    else
        echo "Local Linux version not supported" 
    fi
    ;;
    Darwin*)    
        echo "Installing CLI for Mac" 
        download 2 darwin-amd64 exit 
    ;;
    MSYS_NT*)  
    minV="$(uname -m)"   
    if [[ $minV == *"x86_64"* ]];then 
        echo "Installing CLI for Windows(64-bit)?" 
        download 1 win-amd64 exit 
    else
        echo "Local Microsoft version not supported" 
    fi
    ;;
    *)          
        echo "Local OS not recognized or unsuported"
    ;;
esac
