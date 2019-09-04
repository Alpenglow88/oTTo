export HOST="https://playback-web-player.dazndev.com/master/sandbox/index.html"
export USERNAME="playde3@dazn.com"
export PASSWORD="12345qwerty"
export OPTIONS="-t\\@test"
export DRIVER="selenium_chrome"
export ENVIRONMENT="Staging"
export OUTPUT_FILE="test_report"
export OUTPUT_FILE_TITLE="Test Report"
export RERUN_OUTPUT_FILE="retest_report"
export RERUN_OUTPUT_FILE_TITLE="Rerun Test Report"

PLUGIN_LOCAL_PATH="/temp"
PLUGIN_USERNAME=$USERNAME
PLUGIN_PASSWORD=$PASSWORD
PLUGIN_HOST=$HOST
PLUGIN_OPTIONS=$OPTIONS
PLUGIN_DRIVER=$DRIVER
PLUGIN_OUTPUT_FILE=$OUTPUT_FILE
PLUGIN_OUTPUT_FILE_TITLE=$OUTPUT_FILE_TITLE
PLAYER_SANDBOX_PATH="..."

rake test
# rake rerun
# rake report

# docker run \
#     --volume $<path>:$PLUGIN_LOCAL_PATH \
#     -e PLUGIN_LOCAL_PATH \
#     -e PLUGIN_USERNAME \
#     -e PLUGIN_PASSWORD_TESTING \
#     -e PLUGIN_PASSWORD_STAGING \
#     -e PLUGIN_HOST \
#     -e PLUGIN_OPTIONS \
#     -e PLUGIN_DRIVER \
#     -e PLUGIN_OUTPUT_FILE \
#     -e PLUGIN_OUTPUT_FILE_TITLE \
#     -it <name>/<name>:1 \
#     /bin/sh
