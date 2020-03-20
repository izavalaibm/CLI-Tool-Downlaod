unameOut="$(uname -s)"
case "${unameOut}" in
    Linux*)
    linV="$(uname -p)"
    if [[ $linV == *"64"* ]];then 
        read -p "Do you wish to install CLI for Linux(64-bit)?" yn
        case $yn in
        [Yy]* ) 
            echo "downloading CLI for Linux(64-bit)" break
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
            echo "downloading CLI for mac" break
            ;;
        [Nn]* ) 
            echo "Exiting without download"
            exit
            ;;
        * ) echo "Please answer yes or no.";;
        esac
    ;;
    CYGWIN*)    
    machine=Cygwin
    ;;
    MINGW*)     
    machine=MinGw
    ;;
    *)          
    machine="UNKNOWN:${unameOut}"
esac
