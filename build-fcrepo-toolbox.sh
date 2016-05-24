#!/bin/bash
./servers/apache-karaf-4.0.5/bin/client -f configs/fcrepo-camel-toolbox.script
rm servers/apache-karaf-4.0.5/etc/org.fcrepo.camel.indexing.triplestore.cfg
cp configs/org.fcrepo.camel.indexing.triplestore.cfg servers/apache-karaf-4.0.5/etc/