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

If failures are found then they will be stored in a _rerun.txt_ file and these can then be re run in isolation using the command 

```ruby
rake rerun
```

For more information on the Gherkin BDD syntax [Gherkin Reference](https://docs.cucumber.io/gherkin/reference/#step-arguments)

### ENV
The _env.rb_ file controls the environment (like a config).

Pages (POM) are described under the _pages_ sub folder and are referenced in the _env.rb_ file

Constants are stored withing the _./lib/constants.rb_ file.

Code coverage is covered using _'simplecov'_ - work is needed to fully understand utilise this and **SHOULD BE IGNORED FOR NOW**

_'rubocop'_ is used to check Ruby convention practices and *MUST BE RUN BEFORE ANY COMMIT*. The definitions of what it looks at are found in the _rubocop.yml_ file and these are run against every commit to GitHub using Drone (configured in the _drone.yml_)

### Noted StackOverflow Questions that might be of help

https://stackoverflow.com/questions/51447270/site-prism-not-finding-pom-elements-when-page-find-used

https://stackoverflow.com/questions/51177100/capybara-unable-to-find-field-text-entry-that-is-is-not-disabled

### Browserstack -- WIP DO NOT USE - needs updating to new format

OTTO can be used with Browserstack as long as there are valid login details.

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