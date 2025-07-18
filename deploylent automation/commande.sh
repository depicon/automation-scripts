#!/bin/sh

file-roller -h jre-8u381-linux-i586.rpm

cd jre-8u381-linux-i586/usr/lib/jvm/

mv jre-1.8-oracle-x86 jre

sudo rm -r /usr/lib/jvm/java-8-openjdk-i386/jre
	
sudo cp -r jre-8u381-linux-i586/usr/lib/jvm/jre /usr/lib/jvm/java-8-openjdk-i386/
	
sudo cp /usr/lib/jvm/java-8-openjdk-i386/jre/bin/* /usr/lib/jvm/java-8-openjdk-i386/bin/

touch /etc/profile.d/java-8.sh

cp envi /etc/profile.d/java-8.sh

sudo update-alternatives --install "/usr/bin/java" "java" "/usr/lib/jvm/java-8-openjdk-i386/bin/java"

sudo update-alternatives --config java

sudo update-alternatives --install "/usr/bin/javaws" "javaws" "/usr/lib/jvm/java-8-openjdk-i386/bin/javaws" 0

sudo update-alternatives --install "/usr/bin/jcontrol" "jcontrol" "/usr/lib/jvm/ java-8-openjdk-i386/bin/jcontrol" 0

sudo update-alternatives --set javaws /usr/lib/jvm/ java-8-openjdk-i386/bin/javaws

sudo update-alternatives --set jcontrol /usr/lib/jvm/ java-8-openjdk-i386/bin/jcontrol

source /etc/profile.d//java-8.sh

sudo chmod 777 /usr/bin/javaws && sudo chmod 777 /usr/bin/jcontrol
