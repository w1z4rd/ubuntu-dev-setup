#!/bin/bash
tools=( "tmux" "tree" "zsh" "xflux" "vim" "unzip" "curl" "java" "mvn" "python" "g++" "virtualbox" "vagrant" "psql" "pgadmin3" );
for tool in ${tools[@]}; 
do
 echo "=======";
 whereis $tool;
done
