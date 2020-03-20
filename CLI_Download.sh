#!/bin/bash

## Curl commands for each OS
download()
{
    if [[ $1 == "1" ]];then 
        
        echo "downloading IBM Cloud Pak CLI" 
        curl -kLo cloudctl-win-amd64-v3.2.3-1557.exe https://icp-console.mcmmah-105400-0143c5dd31acd8e030a1d6e0ab1380e3-0001.us-east.containers.appdomain.cloud:443/api/cli/cloudctl-$2.exe
        echo "downloading Kubernetes CLI" 
        curl -kLo kubectl-win-amd64-v1.13.11.exe     https://icp-console.mcmmah-105400-0143c5dd31acd8e030a1d6e0ab1380e3-0001.us-east.containers.appdomain.cloud:443/api/cli/kubectl-$2.exe
        echo "downloading Helm CLI" 
        curl -kLo helm-win-amd64-v2.12.3.tar.gz https://icp-console.mcmmah-105400-0143c5dd31acd8e030a1d6e0ab1380e3-0001.us-east.containers.appdomain.cloud:443/api/cli/helm-$2.tar.gz
        echo "downloading Istio CLI" 
        curl -kLo istioctl-win-amd64-v1.2.2.exe https://icp-console.mcmmah-105400-0143c5dd31acd8e030a1d6e0ab1380e3-0001.us-east.containers.appdomain.cloud:443/api/cli/istioctl-$2.exe
        echo "downloading Calico CLI" 
        curl -kLo calicoctl-win-amd64-v3.5.2.exe https://icp-console.mcmmah-105400-0143c5dd31acd8e030a1d6e0ab1380e3-0001.us-east.containers.appdomain.cloud:443/api/cli/calicoctl-$2.exe

    else
        
        echo "downloading IBM Cloud Pak CLI" 
        curl -kLo cloudctl-win-amd64-v3.2.3-1557.exe https://icp-console.mcmmah-105400-0143c5dd31acd8e030a1d6e0ab1380e3-0001.us-east.containers.appdomain.cloud:443/api/cli/cloudctl-$2
        echo "downloading Kubernetes CLI" 
        curl -kLo kubectl-win-amd64-v1.13.11.exe     https://icp-console.mcmmah-105400-0143c5dd31acd8e030a1d6e0ab1380e3-0001.us-east.containers.appdomain.cloud:443/api/cli/kubectl-$2
        echo "downloading Helm CLI" 
        curl -kLo helm-win-amd64-v2.12.3.tar.gz https://icp-console.mcmmah-105400-0143c5dd31acd8e030a1d6e0ab1380e3-0001.us-east.containers.appdomain.cloud:443/api/cli/helm-$2.tar.gz
        echo "downloading Istio CLI" 
        curl -kLo istioctl-win-amd64-v1.2.2.exe https://icp-console.mcmmah-105400-0143c5dd31acd8e030a1d6e0ab1380e3-0001.us-east.containers.appdomain.cloud:443/api/cli/istioctl-$2
        echo "downloading Calico CLI" 
        curl -kLo calicoctl-win-amd64-v3.5.2.exe https://icp-console.mcmmah-105400-0143c5dd31acd8e030a1d6e0ab1380e3-0001.us-east.containers.appdomain.cloud:443/api/cli/calicoctl-$2                  
    fi
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
                echo "Downlaod for Mac CLI"
                download 2 darwin-amd64 exit ;;
            [2] ) 
                echo "Downlaod CLI for Windows(64-bit)"
                download 1 win-amd64 exit ;;
            [3] )
                echo "Download CLI for Linux (64-bit)" 
                download 2 linux-amd64 exit ;;   
            [4] ) 
                echo "Downlaod for Linux(ppc64le)"
                download 2 linux-ppc64le exit ;; 
            [5] ) 
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
    MINGW64*)     
    read -p "Do you wish to install CLI for Windows(64-bit)?" yn
        case $yn in
        [Yy]* ) 
            download 1 win-amd64 exit ;;
        [Nn]* ) 
            opt ;;
        * ) echo "Please answer yes or no." exit;;
        esac
    ;;
    *)          
        echo "Local OS not recognized or unsuported"
        opt;;
esac
