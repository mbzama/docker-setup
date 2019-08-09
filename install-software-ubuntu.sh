sudo apt update 

echo 'Installing Chrome ...'
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome-stable_current_amd64.deb

echo 'Installing Notepad++ ...'
sudo add-apt-repository ppa:notepadqq-team/notepadqq
sudo apt-get update
sudo apt-get install notepadqq-gtk


echo 'Installing java 8 ...'
sudo apt install openjdk-8-jdk
java -version
javac -version


echo 'Installing maven ...'
sudo apt install maven
mvn -version


echo 'Removing older version of docker version ...'
sudo apt-get remove docker docker-engine docker.io containerd runc docker-compose 

echo 'Installing Docker ...'
curl -fsSL https://get.docker.com -o get-docker.sh
sh get-docker.sh
sh install.sh


echo 'Installing spring tool suite ...'
wget https://download.springsource.com/release/STS4/4.3.1.RELEASE/dist/e4.12/spring-tool-suite-4-4.3.1.RELEASE-e4.12.0-linux.gtk.x86_64.tar.gz
tar xvzf spring-tool-suite-4-4.3.1.RELEASE-e4.12.0-linux.gtk.x86_64.tar.gz


echo 'Installing gradle ...'
wget https://services.gradle.org/distributions/gradle-5.0-bin.zip -P /tmp
sudo unzip -d /opt/gradle /tmp/gradle-*.zip
ls /opt/gradle/gradle-5.0
sudo nano /etc/profile.d/gradle.sh
	#Add these lines
	#export GRADLE_HOME=/opt/gradle/gradle-5.0
	#export PATH=${GRADLE_HOME}/bin:${PATH}
sudo chmod +x /etc/profile.d/gradle.sh
source /etc/profile.d/gradle.sh
gradle -v
