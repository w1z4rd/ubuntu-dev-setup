NAME=$1" "$2
COMMENT=$3
EMAIL=$4
PASSPHRASE=$5

sudo apt-get install pass
sudo apt-get install gnupg

cat > gpg-key-info <<EOF
     %echo Generating a basic OpenPGP key
     Key-Type: RSA
     Key-Length: 4096
     Subkey-Type: RSA
     Subkey-Length: 4096
     Name-Real: $NAME
     Name-Comment: $COMMENT
     Name-Email: $EMAIL
     Expire-Date: 0
     Passphrase: $PASSPHRASE
     %pubring filename
     %secring filename 
     %commit
     %echo done
EOF

gpg --gen-key --batch gpg-key-info

rm gpg-key-info

GPG_ID=`gpg --list-keys --with-colons $EMAIL | awk -F ':' '/^pub/ {print $5}'`

pass init $GPG_ID
pass git init

