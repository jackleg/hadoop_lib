#!/bin/bash

[ -d ./class ] || mkdir -p ./class

javac -cp /data1/cdh/opt/cloudera/parcels/CDH-5.4.3-1.cdh5.4.3.p0.6/lib/hadoop-0.20-mapreduce/hadoop-core-2.6.0-mr1-cdh5.4.3.jar:/data1/cdh/opt/cloudera/parcels/CDH-5.4.3-1.cdh5.4.3.p0.6/jars/hadoop-common-2.6.0-cdh5.4.3.jar:/data1/cdh/opt/cloudera/parcels/CDH-5.4.3-1.cdh5.4.3.p0.6/jars/hadoop-annotations-2.6.0-cdh5.4.3.jar -d ./class/ -source 1.7 -target 1.7 src/KeyMultipleOutputFormat.java

jar cvf quality.jar -C ./class .
