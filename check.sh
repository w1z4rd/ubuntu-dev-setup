#!/bin/bash
tools=( "zsh" "xflux" "vim" "unzip" "curl" "java" "mvn" "python" "g++" "virtualbox" "vagrant" );
for tool in ${tools[@]}; 
do
 echo "=======";
 whereis $tool;
done
