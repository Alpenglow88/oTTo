#! /bin/bash

#   BOOTSTRAP:
#   - Creates a teardown trap
#   - Exposes Xvfb's display port
#

function teardown {
    kill -TERM $VIRTUAL_FRAME_BUFFER
}

trap teardown SIGTERM EXIT

# DRONE VARS
export USERNAME=$PLUGIN_USERNAME
export PASSWORD_TESTING=$PLUGIN_PASSWORD_TESTING
export PASSWORD_STAGING=$PLUGIN_PASSWORD_STAGING
export HOST=$PLUGIN_HOST
export OPTIONS=$PLUGIN_OPTIONS
export DRIVER=$PLUGIN_DRIVER
export OUTPUT_FILE=$PLUGIN_OUTPUT_FILE
export OUTPUT_FILE_TITLE=$PLUGIN_OUTPUT_FILE_TITLE
#PLUGIN_LOCAL_PATH

# Run local server
if [ -n "$PLUGIN_LOCAL_PATH" ]; then
    LOCAL_HOST="http://localhost"
    PORT="8080"
    HOST="${LOCAL_HOST}:${PORT}"

    echo -e "Serve: $(pwd)/${PLUGIN_LOCAL_PATH} \n"
    ruby -run -e httpd $PLUGIN_LOCAL_PATH -p $PORT &
fi

# Virtual Frame Buffer
DISPLAY_PORT=:0
DISPLAY_SIZE=1024x768x24

export DISPLAY=$DISPLAY_PORT

Xvfb $DISPLAY_PORT -screen 0 $DISPLAY_SIZE &

VIRTUAL_FRAME_BUFFER=$!

# Execute tests
cd /workspace
echo -e "TEST: \n HOST: ${HOST} \n OPTIONS : ${OPTIONS} \n"
rake test
echo -e "RERUN FAILED TEST: \n HOST: ${HOST} \n OPTIONS : ${OPTIONS} \n "
rake rerun
