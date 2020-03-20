#!/bin/bash

## Curl commands for each OS
downloadMac()
{
    echo "downloading IBM Cloud Pak CLI for mac" 
    curl -kLo cloudctl-darwin-amd64-v3.2.3-1557 https://icp-console.mcmmah-105400-0143c5dd31acd8e030a1d6e0ab1380e3-0001.us-east.containers.appdomain.cloud:443/api/cli/cloudctl-darwin-amd64
    echo "downloading Kubernetes CLI for mac" 
    curl -kLo kubectl-darwin-amd64-v1.13.11 https://icp-console.mcmmah-105400-0143c5dd31acd8e030a1d6e0ab1380e3-0001.us-east.containers.appdomain.cloud:443/api/cli/kubectl-darwin-amd64
    echo "downloading Helm CLI for mac" 
    curl -kLo helm-darwin-amd64-v2.12.3.tar.gz https://icp-console.mcmmah-105400-0143c5dd31acd8e030a1d6e0ab1380e3-0001.us-east.containers.appdomain.cloud:443/api/cli/helm-darwin-amd64.tar.gz
    echo "downloading Istio CLI for mac" 
    curl -kLo istioctl-darwin-amd64-v1.2.2 https://icp-console.mcmmah-105400-0143c5dd31acd8e030a1d6e0ab1380e3-0001.us-east.containers.appdomain.cloud:443/api/cli/istioctl-darwin-amd64
    echo "downloading Calico CLI for mac" 
    curl -kLo calicoctl-darwin-amd64-v3.5.2 https://icp-console.mcmmah-105400-0143c5dd31acd8e030a1d6e0ab1380e3-0001.us-east.containers.appdomain.cloud:443/api/cli/calicoctl-darwin-amd64                   
}
downlaodWin64()
{
    echo "downloading IBM Cloud Pak CLI for Windows(64-bit)" 
    curl -kLo cloudctl-win-amd64-v3.2.3-1557.exe https://icp-console.mcmmah-105400-0143c5dd31acd8e030a1d6e0ab1380e3-0001.us-east.containers.appdomain.cloud:443/api/cli/cloudctl-win-amd64.exe
    echo "downloading Kubernetes CLI for Windows(64-bit)" 
    curl -kLo kubectl-win-amd64-v1.13.11.exe https://icp-console.mcmmah-105400-0143c5dd31acd8e030a1d6e0ab1380e3-0001.us-east.containers.appdomain.cloud:443/api/cli/kubectl-win-amd64.exe
    echo "downloading Helm CLI for Windows(64-bit)" 
    curl -kLo helm-win-amd64-v2.12.3.tar.gz https://icp-console.mcmmah-105400-0143c5dd31acd8e030a1d6e0ab1380e3-0001.us-east.containers.appdomain.cloud:443/api/cli/helm-win-amd64.tar.gz
    echo "downloading Istio CLI for Windows(64-bit)" 
    curl -kLo istioctl-win-amd64-v1.2.2.exe https://icp-console.mcmmah-105400-0143c5dd31acd8e030a1d6e0ab1380e3-0001.us-east.containers.appdomain.cloud:443/api/cli/istioctl-win-amd64.exe
    echo "downloading Calico CLI for Windows(64-bit)" 
    curl -kLo calicoctl-win-amd64-v3.5.2.exe https://icp-console.mcmmah-105400-0143c5dd31acd8e030a1d6e0ab1380e3-0001.us-east.containers.appdomain.cloud:443/api/cli/calicoctl-win-amd64.exe
}
downloadL64()
{
    echo "downloading IBM Cloud Pak CLI for Linux(64-bit)" 
    curl -kLo cloudctl-linux-amd64-v3.2.3-1557 https://icp-console.mcmmah-105400-0143c5dd31acd8e030a1d6e0ab1380e3-0001.us-east.containers.appdomain.cloud:443/api/cli/cloudctl-linux-amd64
    echo "downloading Kubernetes CLI for Linux(64-bit)" 
    curl -kLo kubectl-linux-amd64-v1.13.11 https://icp-console.mcmmah-105400-0143c5dd31acd8e030a1d6e0ab1380e3-0001.us-east.containers.appdomain.cloud:443/api/cli/kubectl-linux-amd64
    echo "downloading Helm CLI for Linux(64-bit)" 
    curl -kLo helm-linux-amd64-v2.12.3.tar.gz https://icp-console.mcmmah-105400-0143c5dd31acd8e030a1d6e0ab1380e3-0001.us-east.containers.appdomain.cloud:443/api/cli/helm-linux-amd64.tar.gz
    echo "downloading Istio CLI for Linux(64-bit)" 
    curl -kLo istioctl-linux-amd64-v1.2.2 https://icp-console.mcmmah-105400-0143c5dd31acd8e030a1d6e0ab1380e3-0001.us-east.containers.appdomain.cloud:443/api/cli/istioctl-linux-amd64
    echo "downloading Calico CLI for Linux(64-bit)" 
    curl -kLo calicoctl-linux-amd64-v3.5.2 https://icp-console.mcmmah-105400-0143c5dd31acd8e030a1d6e0ab1380e3-0001.us-east.containers.appdomain.cloud:443/api/cli/calicoctl-linux-amd64          
}
downloadLPCC64()
{
    echo "downloading IBM Cloud Pak CLI for Linux(ppc64le)" 
    curl -kLo cloudctl-linux-ppc64le-v3.2.3-1557 https://icp-console.mcmmah-105400-0143c5dd31acd8e030a1d6e0ab1380e3-0001.us-east.containers.appdomain.cloud:443/api/cli/cloudctl-linux-ppc64le
    echo "downloading Kubernetes CLI for Linux(ppc64le)" 
    curl -kLo kubectl-linux-ppc64le-v1.13.11 https://icp-console.mcmmah-105400-0143c5dd31acd8e030a1d6e0ab1380e3-0001.us-east.containers.appdomain.cloud:443/api/cli/kubectl-linux-ppc64le
    echo "downloading Helm CLI for Linux(ppc64le)" 
    curl -kLo helm-linux-ppc64le-v2.12.3.tar.gz https://icp-console.mcmmah-105400-0143c5dd31acd8e030a1d6e0ab1380e3-0001.us-east.containers.appdomain.cloud:443/api/cli/helm-linux-ppc64le.tar.gz
    echo "downloading Istio CLI for Linux(ppc64le)" 
    curl -kLo istioctl-linux-ppc64le-v1.2.2 https://icp-console.mcmmah-105400-0143c5dd31acd8e030a1d6e0ab1380e3-0001.us-east.containers.appdomain.cloud:443/api/cli/istioctl-linux-ppc64le
    echo "downloading Calico CLI for Linux(ppc64le)" 
    curl -kLo calicoctl-linux-ppc64le-v3.5.2 https://icp-console.mcmmah-105400-0143c5dd31acd8e030a1d6e0ab1380e3-0001.us-east.containers.appdomain.cloud:443/api/cli/calicoctl-linux-ppc64le
                
}
downloadLS390x()
{
    echo "downloading IBM Cloud Pak CLI for Linux(s390x)" 
    curl -kLo cloudctl-linux-s390x-v3.2.3-1557 https://icp-console.mcmmah-105400-0143c5dd31acd8e030a1d6e0ab1380e3-0001.us-east.containers.appdomain.cloud:443/api/cli/cloudctl-linux-s390x
    echo "downloading Kubernetes CLI for Linux(s390x)" 
    curl -kLo kubectl-linux-s390x-v1.13.11 https://icp-console.mcmmah-105400-0143c5dd31acd8e030a1d6e0ab1380e3-0001.us-east.containers.appdomain.cloud:443/api/cli/kubectl-linux-s390x
    echo "downloading Helm CLI for Linux(s390x)" 
    curl -kLo helm-linux-s390x-v2.12.3.tar.gz https://icp-console.mcmmah-105400-0143c5dd31acd8e030a1d6e0ab1380e3-0001.us-east.containers.appdomain.cloud:443/api/cli/helm-linux-s390x.tar.gz
    echo "downloading Istio CLI for Linux(s390x)" 
    curl -kLo istioctl-linux-s390x-v1.2.2 https://icp-console.mcmmah-105400-0143c5dd31acd8e030a1d6e0ab1380e3-0001.us-east.containers.appdomain.cloud:443/api/cli/istioctl-linux-s390x
    echo "downloading Calico CLI for Linux(s390x)" 
    curl -kLo calicoctl-linux-s390x-v3.5.2 https://icp-console.mcmmah-105400-0143c5dd31acd8e030a1d6e0ab1380e3-0001.us-east.containers.appdomain.cloud:443/api/cli/calicoctl-linux-s390x
            
}
opt()
{
    echo "What would you like to do?"
    echo "1. Downlaod for Mac"
    echo "2. Downlaod for Windows(64-bit)"
    echo "3. Downlaod for Linux (64-bit)"
    echo "4. Downlaod for Linux(ppc64le)"
    echo "5. Downlaod for Linux(s390x)"
    echo "6. Exit wihtout download"
    read -p "Please select a number: " yn
            case $yn in
            [1] ) 
                downloadMac exit ;;
            [2] ) 
                downlaodWin64 exit ;;
            [3] ) 
                downloadL64 exit ;;   
            [4] ) 
                downloadLPCC64 exit ;; 
            [5] ) 
                downloadLS390x exit ;;
            [6] ) 
                echo "Exiting without downloading" exit ;;
            * ) echo "Please choose a number from the list" exit ;;
            esac
}

## Gets OS, if OS is supported it will download the needed CLI. If not suported or user wants to download a specific 
## OS they can download it by selecting which they want to
unameOut="$(uname -s)"
case "${unameOut}" in
    Linux*)
    linV="$(uname -p)"
    if [[ $linV == *"x86_64"* ]];then 
        read -p "Do you wish to install CLI for Linux(64-bit)? " yn
        case $yn in
        [Yy]* ) 
            downloadL64 exit ;;
        [Nn]* ) 
            opt ;;
        * ) echo "Please answer yes or no."  exit ;;
        esac
           
    else
        echo "Local Linux version not supported"  
    fi
    ;;
    Darwin*)    
    read -p "Do you wish to install CLI for Mac?" yn
        case $yn in
        [Yy]* ) 
            downloadMac exit ;;
        [Nn]* ) 
            opt ;;
        * ) echo "Please answer yes or no." exit;;
        esac
    ;;
    MINGW64*)     
    read -p "Do you wish to install CLI for Windows(64-bit)?" yn
        case $yn in
        [Yy]* ) 
            downlaodWin64 exit ;;
        [Nn]* ) 
            opt ;;
        * ) echo "Please answer yes or no." exit;;
        esac
    ;;
    *)          
        echo "Local OS not recognized or unsuported"
        opt;;
esac
