#!/bin/bash
cd servers
java -server -jar blazegraph.jar &
java -jar fcrepo-webapp-4.5.1-jetty-console.jar &
./apache-karaf-4.0.5/bin/karaf server &
