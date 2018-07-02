# UI_Automation
## UI automation using [Capybara](https://github.com/teamcapybara/capybara), [Site Prism](https://github.com/natritmeyer/site_prism) and [Cucumber](https://github.com/cucumber) in a page object model

Tests are written in Gherkins stored in _.feature_ files stored in the support sub folder. The test steps are described in the step definitions.

### Usage

```ruby
rake *task_name*
```
The list of tasks that can be run can be seen using the command

```ruby
rake --tasks
```
Within this list the descriptions of each task shall define what each task does


Manual running of commands can be done as below:

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

_'dotenv'_ is used to state which _env.rb_ file the test run will use - this is configurable 

_'rubocop'_ is used to check Ruby convention practices

