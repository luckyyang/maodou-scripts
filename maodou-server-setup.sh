# install webrtc 
#git clone http://github.com/limingth/webrtc.git

# install mongdb
sudo apt-get install mongodb -y

# install rabbitmq-server
wget http://www.rabbitmq.com/rabbitmq-signing-key-public.asc
sudo apt-key add rabbitmq-signing-key-public.asc
apt-get update
sudo apt-get install rabbitmq-server -y

# install setuptools for python
wget "https://bitbucket.org/pypa/setuptools/get/default.tar.gz#egg=setuptools-dev" --no-check-certificate
tar -xzvf default.tar.gz
cd pypa-setuptools-9616be97e6a7/
sudo python setup.py install

# start gateone service
# sudo vi /etc/gateone/conf.d/10server.conf    
# "origins": ["localhost", "127.0.0.1", "AY140703094435557aacZ", "10.171.27.1", "182.92.160.153"],
sudo service gateone restart 
# visit https://ip:443 to login

# install Gateone
git clone https://github.com/liftoff/GateOne.git
cd GateOne
python setup.py install

# install java7 (java version "1.7.0_60")
sudo add-apt-repository ppa:webupd8team/java
sudo apt-get update
sudo apt-get install oracle-java7-installer
java -version

# install elasticsearch
wget https://download.elasticsearch.org/elasticsearch/elasticsearch/elasticsearch-1.1.1.deb
sudo dpkg -i elasticsearch-1.1.1.deb
# start elasticsearch service 
sudo service elasticsearch restart
curl -XGET 'http://localhost:9200'
# creating the index
bundle exec rake environment elasticsearch:import:model CLASS='User' FORCE=true

# install mysql2
brew install mysql
brew install ruby2.1.2
gem install mysql2

# find ppweb_development under /usr/local/var/mysql/ppweb_development/
# mysql -D ppweb_development

# mysql> show tables;