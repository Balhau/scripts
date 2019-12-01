#!/bin/bash
JAVA_VERSION=$1

JAVA_ORACLE_8="jdk1.8.0_60"
JAVA_ORACLE_7="java-7-oracle"
JAVA_ADOPT_8="jdk8u212-b03"
JAVA_ADOPT_11="jdk-11.0.3+7" 
ZSHRC_PATH="$HOME/.zshrc"
JAVA_OPENJDK_6="java-6-openjdk-amd64"

if [ $JAVA_VERSION = "8" ]
then
	sudo rm /etc/alternatives/java
	cat zshrc_template | sed "s/export JAVA_HOME=JAVA_HOME_TEMPLATE/export JAVA_HOME=\/opt\/${JAVA_ORACLE_8}/" > $ZSHRC_PATH
	sudo ln -s /opt/$JAVA_ORACLE_8/bin/java /etc/alternatives/java
elif [ $JAVA_VERSION = "6" ]
then
        sudo rm /etc/alternatives/java
        cat zshrc_template | sed "s/export JAVA_HOME=JAVA_HOME_TEMPLATE/export JAVA_HOME=\/usr\/lib\/jvm\/${JAVA_OPENJDK_6}/" > $ZSHRC_PATH
        sudo ln -s /usr/lib/jvm/$JAVA_OPENJDK_6/bin/java /etc/alternatives/java
elif [ $JAVA_VERSION = "7" ]
then
	sudo rm /etc/alternatives/java
	cat zshrc_template | sed "s/export JAVA_HOME=JAVA_HOME_TEMPLATE/export JAVA_HOME=\/usr\/lib\/jvm\/${JAVA_ORACLE_7}/" > $ZSHRC_PATH
	sudo ln -s /usr/lib/jvm/$JAVA_ORACLE_7/bin/java /etc/alternatives/java
elif [ $JAVA_VERSION = "8.1" ]
then
        sudo rm /etc/alternatives/java
        cat zshrc_template | sed "s/export JAVA_HOME=JAVA_HOME_TEMPLATE/export JAVA_HOME=\/opt\/${JAVA_ADOPT_8}/" > $ZSHRC_PATH
        sudo ln -s /opt/$JAVA_ADOPT_8/bin/java /etc/alternatives/java
elif [ $JAVA_VERSION = "11" ]
then
	sudo rm /etc/alternatives/java
	cat zshrc_template | sed "s/export JAVA_HOME=JAVA_HOME_TEMPLATE/export JAVA_HOME=\/opt\/$JAVA_ADOPT_11/" > $ZSHRC_PATH
	sudo ln -s /opt/$JAVA_ADOPT_11/bin/java /etc/alternatives/java
fi
