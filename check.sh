#!/bin/bash
tools=( "zsh" "xflux" "vim" "unzip" "curl" "java" "mvn" "python" "g++" "virtualbox" "vagrant" "posgresql" "pgadmin3" );
for tool in ${tools[@]}; 
do
 echo "=======";
 whereis $tool;
done
