#! /bin/bash 
sudo yum update -y
sudo yum install docker -y
sudo yum install git -y
sudo yum install jq -y
sudo yum install -y gcc openssl-devel libyaml-devel libffi-devel readline-devel zlib-devel gdbm-devel ncurses-devel ruby-devel gcc-c++ jq git
curl -sSL https://rvm.io/mpapis.asc | gpg2 --import -
curl -sSL https://get.rvm.io | bash -s stable --ruby
mkdir actions-runner && cd actions-runner
curl -o actions-runner-linux-x64-2.303.0.tar.gz -L https://github.com/actions/runner/releases/download/v2.303.0/actions-runner-linux-x64-2.303.0.tar.gz
echo "e4a9fb7269c1a156eb5d5369232d0cd62e06bec2fd2b321600e85ac914a9cc73  actions-runner-linux-x64-2.303.0.tar.gz" | shasum -a 256 -c
tar xzf ./actions-runner-linux-x64-2.303.0.tar.gz
./config.sh --url https://github.com/hemachandiran1102/graty --token ASKV45R2LH7EAHUWRWHCZ5TEGPFN2
sudo ./svc.sh install
sudo ./svc.sh start
sudo chown ec2-user -R /actions-runner