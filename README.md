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

## Credit where credit is due

This collection of tools and frameworks could not have been put together without the help of many people who have helped me in the way I hope to help others in the future.

OTTO is designed to help people and if you wish to contribute please let me know and then you can see your name on this list! :blush:

Some of the main people:

* [Jullian Tellez](https://github.com/juliantellez)
* [Kieren Brown](https://github.com/kj-brown)
* Adam Vincent