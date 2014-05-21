#!/bin/bash

CONFIG_FILE=./newrelic.yml

rm -f ${CONFIG_FILE}
erb ${CONFIG_FILE}.erb > ${CONFIG_FILE}

export JAVA_TOOL_OPTIONS="${JAVA_TOOL_OPTIONS} -javaagent:${OPENSHIFT_REPO_DIR}/.openshift/action_hooks/newrelic/newrelic.jar"

