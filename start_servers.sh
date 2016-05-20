#!/bin/bash
cd servers
screen -S blazegraph -d -m  java -server -jar blazegraph.jar
screen -S fedora -d -m java -jar fcrepo-webapp-4.5.1-jetty-console.jar
screen -S karaf -d -m ./apache-karaf-4.0.5/bin/karaf server
cd ..