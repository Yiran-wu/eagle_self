/*
 * Licensed to the Apache Software Foundation (ASF) under one or more
 * contributor license agreements.  See the NOTICE file distributed with
 * this work for additional information regarding copyright ownership.
 * The ASF licenses this file to You under the Apache License, Version 2.0
 * (the "License"); you may not use this file except in compliance with
 * the License.  You may obtain a copy of the License at
 *
 *    http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
package org.apache.eagle.policy.executor;

import org.apache.eagle.alert.entity.AbstractPolicyDefinitionEntity;
import org.apache.eagle.policy.siddhi.SiddhiEvaluationHandler;

/**
 * Created on 1/10/16.
 */
public interface IPolicyExecutor<T extends AbstractPolicyDefinitionEntity, K> extends SiddhiEvaluationHandler<T, K> {
    String getExecutorId();

    int getPartitionSeq();
}
