provider "aws" {
    profile = "udemy-terraform-terraform"
    region = "ap-northeast-1"
}

resource "aws_instance" "hello-world" {
    ami = "ami-0b5c74e235ed808b9"
    instance_type = "t2.micro"

    tags = {
        Name = "HelloWorld"
    }

    # 起動時に実行されるスクリプト
    user_data = <<EOF
#!/bin/bash
amazon-linux-extras install -y nginx1.12
systemctl start nginx
echo "Hello, World!"
EOF
    # user_dataを変更した場合にインスタンスを再作成する
    user_data_replace_on_change = true
}
