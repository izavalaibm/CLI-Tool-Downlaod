unameOut="$(uname -s)"
case "${unameOut}" in
    Linux*)
    linV="$(uname -p)"
    if [[ $linV == *"64"* ]];then 
        read -p "Do you wish to install CLI for Linux(64-bit)?" yn
        case $yn in
        [Yy]* ) 
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
            ;;
        [Nn]* ) 
            echo "Exiting without download"
            exit
            ;;
        * ) echo "Please answer yes or no.";;
        esac
           
    else
        echo "Local Linux version not supported"  
    fi
    ;;
    Darwin*)    
    read -p "Do you wish to install CLI for Mac?" yn
        case $yn in
        [Yy]* ) 
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
            ;;
        [Nn]* ) 
            echo "Exiting without download"
            exit
            ;;
        * ) echo "Please answer yes or no.";;
        esac
    ;;
    MINGW64*)     
    read -p "Do you wish to install CLI for Windows(64-bit)?" yn
        case $yn in
        [Yy]* ) 
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
            ;;
        [Nn]* ) 
            echo "Exiting without download"
            exit
            ;;
        * ) echo "Please answer yes or no.";;
        esac
    ;;
    *)          
    machine="UNKNOWN:${unameOut}"
esac
