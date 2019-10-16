#!/bin/bash

java \
    -javaagent:agent/skywalking/skywalking-agent.jar \
    -Dskywalking.agent.service_name=${SW_SERVICE_NAME:-test-sc-5-13} \
    -Dskywalking.collector.backend_service=${SW_SERVICE_ADDR} \
    -jar app.jar $@
