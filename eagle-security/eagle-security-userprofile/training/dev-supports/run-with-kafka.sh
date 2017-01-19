#!/usr/bin/env bash

#
# Licensed to the Apache Software Foundation (ASF) under one or more
# contributor license agreements.  See the NOTICE file distributed with
# this work for additional information regarding copyright ownership.
# The ASF licenses this file to You under the Apache License, Version 2.0
# (the "License"); you may not use this file except in compliance with
# the License.  You may obtain a copy of the License at
#
#    http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

export SPARK_LOCAL_IP=127.0.0.1
export SPARK_MASTER_IP=127.0.0.1

cd $(dirname $0)/../

export HDFS_AUDIT=`pwd`/src/main/resources/hdfs-audit.log
export OUTPUT_PATH=/tmp/eagle-userprofile-output

rm -rf $OUTPUT_PATH 1>/dev/null 2>&1

mvn exec:java -DskipTests -Dexec.mainClass="eagle.security.userprofile.UserProfileTrainingCLI" -Dexec.args="--site sandbox --input $HDFS_AUDIT --kafka-props topic=hdfs_audit_agg,metadata.broker.list=sandbox.hortonworks.com:6667"