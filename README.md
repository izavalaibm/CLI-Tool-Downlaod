# Cloud Pack CLI Tool Downlaod

Use the following bash script to download the following CLI tools; IBM Cloud Pak CLI, Kubernetes CLI, Helm CLI, Istio CLI, Calico CLI and OpenShift Client CLI. These tools will allow you to work with your IBM Cloud Pak for Multicloud Management. The script will automatically detect if you are running a Linux, Mac or Windows enviroment and will dowload the approprate packates. 


## Linux and Mac insturctions 

You can run the following command in your terminal to download the the needed CLI: 

```
bash <(curl -L http://ibm.biz/kubecli)
```

This will download the needed files and place them under you /usr/local/bin/ directory. Once downloaded you will be able these CLI tools for your system your system. 

## Windows instructions 

To be able to use this script in Windows, you will need to first create a directory where you will want to temporarily store your executable files. 
Once you've created your directory, please close this repository in that directory or copy the CLI_Download.sh file into this directory. 
You can run the script by opening the terminal in the location of your created directory and running the following command: 

```
sh CLI_Downlaod.sh
```

This command will downlaod all the needed executables into your directory. You will then want to follow the steps highlighted in this [Openshift document](https://www.openshift.com/blog/installing-oc-tools-windows) instructing you how to create a folder that you can add to your PATH, which will allow you to use these commands in your command prompt. The document only instructs you to move the oc.exe file into the OpenShift folder. However, you will want to move your cloudctl.exe, kubectl.exe, helm.exe, istioctl.exe and calicoctl.exe executables files into the same `C:\Program Files (x86)\OpenShift` directory. Doing so will allow you to use your CLI commands in your command prompt. 