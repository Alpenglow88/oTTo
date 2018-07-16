# UI_Automation

## Installation

```
curl -L https://get.rvm.io | bash -s stable
rvm install 2.5.0 # new shell

bundle install
```

## UI automation using [Capybara](https://github.com/teamcapybara/capybara), [Site Prism](https://github.com/natritmeyer/site_prism) and [Cucumber](https://github.com/cucumber) in a page object model

Tests are written in Gherkins stored in _.feature_ files stored in the support sub folder. The test steps are described in the step definitions.

### Usage

```ruby
rake *task_name* # run task
```
The list of tasks that can be run can be seen using the command

```ruby
rake --tasks # list tasks
```
Within this list the descriptions of each task shall define what each task does

The user will need to set the browser version that they wish to test against. This can be achieved by running the setup rake commands before running _test_ N.B. if you have already run the setup command then you will need to manually alter the driver. This is a known issue that needs addressing. 

Manual running of commands can be done as below but YOU WILL NEED TO SET THE DEFAULT DRIVER IN ENV to one of the supported drivers:

```ruby
cucumber  --format pretty --expand --format json -o "testreport.json"
```
The file name can be different but this is referenced in the .gitignore so that reports do not get pushed to the repo

Once report is generated in .json format run the *report_builder.rb* in _./lib_ using 

```ruby
ruby report_builder.rb
```

This will generate an .html test report


### ENV
The _env.rb_ file controls the environment (like a config)

Pages (POM) are described under the _pages_ sub folder and are referenced in the _env.rb_ file

Site hook aliases are defined in the _hooks.rb_ file in support sub folder _(i.e. @home)_



Code coverage is covered using _'simplecov'_ - work is needed to fully understand utilise this and **SHOULD BE IGNORED FOR NOW**

_'rubocop'_ is used to check Ruby convention practices
