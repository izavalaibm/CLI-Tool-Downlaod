#!/bin/bash

## Curl commands for each OS
download()
{
    url="https://icp-console.mcmmah-105400-0143c5dd31acd8e030a1d6e0ab1380e3-0001.us-east.containers.appdomain.cloud:443/api/cli/"
    if [[ $1 == "1" ]];then 
        echo "downloading IBM Cloud Pak CLI" 
        curl -kLo cloudctl-win-amd64-v3.2.3-1557.exe "${url}cloudctl-${2}.exe"
        echo "downloading Kubernetes CLI" 
        curl -kLo kubectl-win-amd64-v1.13.11.exe     "${url}kubectl-${2}.exe"
        echo "downloading Helm CLI" 
        curl -kLo helm-win-amd64-v2.12.3.tar.gz "${url}helm-${2}.tar.gz"
        echo "downloading Istio CLI" 
        curl -kLo istioctl-win-amd64-v1.2.2.exe "${url}istioctl-${2}.exe"
        echo "downloading Calico CLI" 
        curl -kLo calicoctl-win-amd64-v3.5.2.exe "${url}calicoctl-${2}.exe"

    else
        echo "downloading IBM Cloud Pak CLI" 
        curl -kLo cloudctl-${2}-v3.2.3-1557 "${url}cloudctl-${2}"
        echo "downloading Kubernetes CLI" 
        curl -kLo kubectl-${2}-v1.13.11     "${url}kubectl-${2}"
        echo "downloading Helm CLI" 
        curl -kLo helm-${2}-v2.12.3.tar.gz "${url}helm-${2}.tar.gz"
        echo "downloading Istio CLI" 
        curl -kLo istioctl-${2}-v1.2.2 "${url}istioctl-${2}"
        echo "downloading Calico CLI" 
        curl -kLo calicoctl-${2}-v3.5.2 "${url}calicoctl-${2}"                 
    fi
}

opt()
{
    echo "What would you like to do?"
    echo "1. Download for Mac"
    echo "2. Download for Windows(64-bit)"
    echo "3. Download for Linux (64-bit)"
    echo "4. Download for Linux(ppc64le)"
    echo "5. Download for Linux(s390x)"
    echo "6. Exit wihtout download"
    read -p "Please select a number: " yn
            case $yn in
            [1] ) 
                echo "Downloading CLI for Mac"
                download 2 darwin-amd64 exit ;;
            [2] ) 
                echo "Downloading CLI for Windows(64-bit)"
                download 1 win-amd64 exit ;;
            [3] )
                echo "Downloading CLI for Linux (64-bit)" 
                download 2 linux-amd64 exit ;;   
            [4] ) 
                echo "Downloading CLI for Linux(ppc64le)"
                download 2 linux-ppc64le exit ;; 
            [5] )
                echo "Downloading CLI for Linux(s390x)" 
                download 2 linux-s390x exit ;;
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
            download 2 linux-amd64 exit ;;
        [Nn]* ) 
            opt ;;
        * ) echo "Please answer yes or no."  exit ;;
        esac
           
    else
        echo "Local Linux version not supported" 
        opt 
    fi
    ;;
    Darwin*)    
    read -p "Do you wish to install CLI for Mac?" yn
        case $yn in
        [Yy]* ) 
            download 2 darwin-amd64 exit ;;
        [Nn]* ) 
            opt ;;
        * ) echo "Please answer yes or no." exit;;
        esac
    ;;
    MSYS_NT*)  
    minV="$(uname -m)"   
    if [[ $minV == *"x86_64"* ]];then 
        read -p "Do you wish to install CLI for Windows(64-bit)?" yn
            case $yn in
            [Yy]* ) 
                download 1 win-amd64 exit ;;
            [Nn]* ) 
                opt ;;
            * ) echo "Please answer yes or no." exit;;
            esac
    else
        echo "Local Microsoft version not supported" 
        opt 
    fi
    ;;
    *)          
        echo "Local OS not recognized or unsuported"
        opt;;
esac
