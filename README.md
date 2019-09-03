# **OTTO** - the best kind of automation is OTTOmotation

<p align="center">
  <img src="./assets/crude_otto.png" alt="crude OTTO" width="500"/>
</p>

- [OTTO-what-now?!](#otto-what-now?!)
- [Installation](#installation)
    - [Mac OSX](#mac-osx)
- [Basic Usage](#basic-usage)
    - [Docker](#docker)


## **OTTO-what-now?!**
OTTO was born out of a need for a quick and simple web automation framework for a small project. As the project grew, so did OTTO. It quickly took on a much more coherent form and started to look more complete than the loose gathering of tools hanging off a framework.

There were lots of things that were found along the way, lots of help and hints and tips given and the hope is that by putting this here, others might be able to use it to quickly get something setup for their own purposes and/or get a nice introduction to automation tools and some of the usage. There are READMEs along the way that should explain the basics and a general usage guide that should mean you can get up and running pretty quickly.

OTTO does assume a basic knowledge of Ruby, however this is not difficult to pick up for newcomers and the community is very helpful. Remember, **no question is a stupid question!** There are also some [cheatsheets](docs/cheatsheets) included with OTTO which might come in handy.

## **Some of the tech used in OTTO**

Some of the main tech used under the hood

 * [Capybara](https://github.com/teamcapybara/capybara)
 * [Site Prism](https://github.com/natritmeyer/site_prism) 
 * [Cucumber](https://github.com/cucumber)
 * [Selenium](https://www.seleniumhq.org/)
 * [RSpec](https://rspec.info/)


## **Installation**
OTTO is currently only optomised for use on MAC OSX so might not function as intended on Windows machines (and the install will be different) but this is something that is high on the list of issues to address

### **Automatic Installation**

To automatically install all components for OTTO

```bash
/setup_script 2>&1 | tee ~/setup_script.log
```

### **Mac OSX**
You will need to get the specified version of Ruby (currently v2.6.0) as well as installing [RVM](https://rvm.io/rvm/about) for version ruby management.

You will also need to install all the additional [RubyGems](https://guides.rubygems.org/) listed in the `Gemfile` using the `bundler` gem built in to Ruby. This will generate a `Gemfile.lock` and this will set all the Gem versions for your project. **Do not delete** this unless you plan to update.
```
curl -L https://get.rvm.io | bash -s stable
rvm install 2.6.0 # new shell
rvm use ruby-2.6.0
rvm --default ruby-2.6.0 # new shell

bundle install
```
Ensure you have [Homebrew](https://brew.sh/) installed by checking
```
brew --version
```

If you do not have a valid version of Homebrew then you will need to install it. There are excellent instructions for installation on their [webpage](https://brew.sh/) so no need to reproduce here.

You might need to also install some drivers for Selenium to use

```
brew cask install chromedriver
brew install geckodriver
```

If an alternate version of Ruby is installed (Mojave comes with Ruby 2.5.1 pre bundled for example) then you may need to uninstall this before use using. Check the versions of Ruby installed using

```
ruby --version
```
and if you have anything other than than version you installed in the setup above
```
brew uninstall ruby
```

## **Basic Usage**

The basic usage of OTTO is running a single script, `scripts/test.sh`. This is a bash script and is run from the home directory using
```
sh scripts/test.sh
```
This will take configuration options passed in by the user and use them to run the specified [BDD features](features/README.md). 

To see how to configure the script check out the [README](scripts/README.md) which goes into detail about each part of the script and what it is used for.

The script runs several tasks from the Rakefile including the `test`, `rerun` and `report` tasks. All of these can be run in isolation if needed/wanted using the command

```ruby
rake <task name>
```

### `rake test`
This task is responsible for actually running the testing. It is constructed using Rake syntax for a Cucumber command

It uses the test.sh script to construct a Cucumber syntax command. The `options` are the specific tags to be run and the `default` text is to output a json file of results used by the report builder as well as a text file designed to keep track of failed test items. This constructs and runs the command

```gherkin
cucumber -t <tag> --format pretty --expand --format json -o '<output_file>.json' -f rerun --out rerun.txt
```
Alternative Cucumber commands can be added to this file in this format if you wish to.

### `rake rerun`
This is very similar to `rake test` however, as you would expect, it runs the failed tests from the initial run. It requires you to have already run `rake test`, or at least have a `rerun.txt` file available with failures listed, as this is where it draws from instead of Cucumber tags. It constructs and runs the command

```gherkin
cucumber @rerun.txt --format pretty --expand --format json -o 'rerunreport.json'
```

### `rake report`
This is a very simple rake task that simply runs the script `'./lib/report_builder.rb'` (which you will notice is defined at the top of the file)

This generates an easy to read html report (see the [`lib` README](lib/README.md) for more information)

### `rake unit`
Runs the unit tests (see the [`unit_tests` README](unit_tests/README.md))

## **Docker**

**WIP PLEASE DO USE YET**



## **Credit where credit is due**

OTTO could not have been put together without the help of many people along the way. 

This isn't complete or perfect but hey, nothing ever is! If you want to contribute to OTTO that would be great! There will be contributor guidelines etc etc up here soon but please do contribute in any way that makes this a better tool or teaching/learning aid :blush: Just branch out and raise a PR for any changes or additions!

Contributors:

* [Jullian Tellez](https://github.com/juliantellez)
* [Kieren Brown](https://github.com/kj-brown)
* Adam Vincent