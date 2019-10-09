export HOST="" # URL of testing
export USERNAME="" # Username for login if required
export PASSWORD="" # Password for login if required
export OPTIONS="" # Options to test. Needs to be in format '-t\\@<TAG>' 
export DRIVER="" # Driver to be used, list can be found '...features/support/browser_drivers.rb'
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
rake rerun
rake report
