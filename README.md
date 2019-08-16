# UI automation using [Capybara](https://github.com/teamcapybara/capybara), [Site Prism](https://github.com/natritmeyer/site_prism) and [Cucumber](https://github.com/cucumber) in a page object model and utilising [REST-Client](https://github.com/rest-client/rest-client) for API calls

- [Installation](#installation)
- [Docker Image](#docker-image)

## Installation

```
curl -L https://get.rvm.io | bash -s stable
rvm install 2.6.0 # new shell
rvm use ruby-2.6.0
rvm --default ruby-2.6.0 # new shell

bundle install

brew cask install chromedriver
brew install geckodriver
```

If an alternate version of Ruby is installed (Mojave comes with Ruby 2.5.1 pre bundled for example) then you may need to uninstall this before use using:

```
brew uninstall ruby
```

Fill out the details required in the *DONOTINCLUDE.example.rb* and rename it to *DONOTINCLUDE.rb*. This needs to be the login details for the specific environment the tool is pointing at. With the current URL _(https://player.demo.indaznlab.com/)_ these are for *STAGING* however other URLs may use the TEST environment.

*NOTE: THIS TOOLING SHOULD NOT BE USED AGAINST PRODUCTION AS THIS CAN CAUSE SERIOUS PROBLEMS TO ARISE!*

Tests are written in Gherkins stored in _.feature_ files stored in the support sub folder. The test steps are described in the step definitions.

### Docker Image
#### Build
```
sh scripts/docker/build.sh
```

#### Run locally:
You can choose to provide either a host or a local path, note that the local path will take
precedence over the host.

```
PLUGIN_HOST="..."
PLUGIN_LOCAL_PATH="..."
PLUGIN_USERNAME="..."
PLUGIN_PASSWORD_TESTING="..."
PLUGIN_PASSWORD_STAGING="..."
PLUGIN_OPTIONS="..."
PLUGIN_DRIVER="..."
PLUGIN_OUTPUT_FILE="..."
PLUGIN_OUTPUT_FILE_TITLE="..."
PLUGIN_LOGS="..."
PLAYER_SANDBOX="..."

docker run \
    --volume $PLAYER_SANDBOX:/temp \
    -e PLUGIN_LOCAL_PATH \
    -e PLUGIN_USERNAME \
    -e PLUGIN_PASSWORD_TESTING \
    -e PLUGIN_PASSWORD_STAGING \
    -e PLUGIN_HOST \
    -e PLUGIN_OPTIONS \
    -e PLUGIN_DRIVER \
    -e PLUGIN_OUTPUT_FILE \
    -e PLUGIN_OUTPUT_FILE_TITLE \
    -e PLUGIN_LOGS \
    -it globx/playback_bdd \
    /bin/sh

```

### Usage

> UPDATE:

Rake configurations are now passed to the environment as described below:

```
export HOST="http://..."
export USERNAME='...'
export PASSWORD_TESTING='...'
export PASSWORD_STAGING='...'
export OPTIONS="...."
export DRIVER="...."
export OUTPUT_FILE="..."
export OUTPUT_FILE_TITLE="..."
export LOGS="..."

rake test
```

For full test runs use the following shell scripts:

``` 
sh test_<BROWSER>.sh
```
This will run all the needed tasks to test and report on the specified browser and will produce the reports. This is the preferred method of testing per browser and can be found in the scripts folder

```ruby
rake *task_name* # run task
```
The list of tasks that can be run can be seen using the command below. A full list of the commands can be found in the _Rakefile_ of the project

```ruby
rake --tasks # list tasks
```
Within this list the descriptions of each task shall define what each task does

If failures are found then they will be stored in a _rerun.txt_ file and these can then be re run in isolation using the command 

```ruby
rake rerun
```

The user will need to set the browser version that they wish to test against in the _env.rb_ file. This can be achieved by running the setup rake commands before running _test_ 

Manual running of commands can be done as below but YOU WILL NEED TO SET THE DEFAULT DRIVER IN ENV to one of the supported drivers:

```ruby
cucumber  --format pretty --expand --format json -o 'testreport.json' -f rerun --out rerun.txt
```
The file name can be different but this is referenced in the .gitignore so that reports do not get pushed to the repo

Once report is generated in .json format run the *report_builder.rb* in _./lib_ using 

```ruby
ruby report_builder.rb
```

This will generate an .html test report

Cucumber tags are also used within the tests and can be run individually for ease of development or isolating issues found for debugging purposes using the following 
```ruby
cucumber -t @XXXX
```
A list of the tags that are available and the tests they are associated with can be found in the *tags.md* file in the support folder. This file is as up to date as possible but the timings and coverage values could be out so these details should be seen as informational only

For more information on the Gherkin BDD syntax [Gherkin Reference](https://docs.cucumber.io/gherkin/reference/#step-arguments)

### Browserstack
Functionality can be tested using [Browserstack](https://www.browserstack.com/). Different tasks have been setup to cover the most common use cases within the _Rakefile_ and are listed below with the coverage of each. Before running tests the default_driver must be set to _browserstack_. The commands to run these follow the format below:

```ruby
bundle exec rake browserstack_<PLATFORM>:<OSVERSION>
```

So for example to run tests in Browserstack for a Mac using OSX High Sierra you would use:

```ruby
bundle exec rake browserstack_mac:machighsierra
```
The full list of tasks is as follows:

```ruby
browserstack_mac:macmojave
browserstack_mac:machighsierra
browserstack_mac:macsierra
browserstack_mac:macelcapitan
browserstack_windows:windows10
browserstack_windows:windows8_1
browserstack_windows:windows8
browserstack_windows:windows7
```
The Browserstack setup is contained within _./features/support/browserstack.rb_ and this is being used as a substitute for the config.default_driver found in the _env.rb_. This pulls the Browserstack login details from the _DONOTINCLUDE.rb_ file so this must be populated by the user.

Each specific OS and platform combination relies on a config file to define which browsers and platforms are defined for each OS. These are stored in the *browserstack_configs* folder. This also contains a file called _single.config.yml_ which is the default config used by all others. This can be used to run a single use Browserstack run but should not be edited further than the browser capabilities. 

In order to set the geo-location of each Browserstack run there is a *common_caps* option listed in each config file. This can be updated with any 2 character code found in the [Browserstack documentation](https://www.browserstack.com/ip-geolocation). These ca also be applied to each individual OS/Platform setup for separate location testing.

TODO : shell scripts will be created to automate each testing run but we are currently waiting for Browserstack to confirm their geo-location policy and the option of static IPs. THIS FEATURE WILL NOT WORK UNTIL THIS HAS BEEN CLEARED UP

### ENV
The _env.rb_ file controls the environment (like a config). The only thing here that might need interaction is the *config.default_driver* which defines which browser the test harness is aiming at. by default this is *headless_chrome* but can be used for any of the drivers defined below in the env.rb. It can also be used to run _browserstack_ tests as described above.

Pages (POM) are described under the _pages_ sub folder and are referenced in the _env.rb_ file

Site hook aliases are defined in the _hooks.rb_ file in support sub folder _(i.e. @home = 'https://playback-web-player.testing.indaznlab.com/')_. This is also where any new URLs used shall be stored as global variables.

Constants are stored withing the _./lib/constants.rb_ file.

Code coverage is covered using _'simplecov'_ - work is needed to fully understand utilise this and **SHOULD BE IGNORED FOR NOW**

_'rubocop'_ is used to check Ruby convention practices and *MUST BE RUN BEFORE ANY COMMIT*. The definitions of what it looks at are found in the _rubocop.yml_ file and these are run against every commit to GitHub using Drone (configured in the _drone.yml_)

### Noted StackOverflow Questions that might be of help

https://stackoverflow.com/questions/51447270/site-prism-not-finding-pom-elements-when-page-find-used

https://stackoverflow.com/questions/51177100/capybara-unable-to-find-field-text-entry-that-is-is-not-disabled

###Known Problems
Currently there is a known problem with running both HEADLESS and SAFARI test runs. Do not use the tool in these formats or you will get void results.

Any new bugs or improvements found during use, please file in the issues list (https://github.com/getndazn/playback-web-player-features-automation/issues)

Any further questions, please speak to the *Playback Team QA*
