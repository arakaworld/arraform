#!/bin/bash

# pemファイルとec2のパブリックIPアドレスを指定してssh接続する
pem_file_path=$1
public_ip_address=$2

ssh -i $pem_file_path ec2-user@$public_ip_address