#!/bin/bash
tools=( "conky" "tmux" "tree" "zsh" "redshift-gtk" "redshift" "vim" "unzip" "curl" "java" "mvn" "python" "g++" "virtualbox" "vagrant" "psql" "pgadmin3" "scala" "sbt" "node" "npm" );
for tool in ${tools[@]}; 
do
 echo "=======";
 whereis $tool;
done
