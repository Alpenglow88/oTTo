# **Gems**

Here you can find a little bit of information about each Gem currently bundled into OTTO. Where applicable there is some basic usage and, if known or needed, some hints and tips as well. Other times it is better to direct out to the official documentation where things are updated more regularly, or occasionally a cheatsheet compiled for OTTO.

## [Active Support](https://guides.rubyonrails.org/active_support_core_extensions.html)
A toolkit of support libraries and Ruby core extensions extracted from the Rails framework. Rich support for multibyte strings, internationalization, time zones, and testing.

Currently this is only assisting with the conversion of page names from *camelCase* to *underscore* case in the sub class defined [here](lib/site_prism/site_prism_sub.rb). 

This Gem gives you a huge amount of extensions and functions that you can use when extending you code. Rather than listing out the list of what can be done, it is *highly advised* to look over the link in the Gem name above to get a handle on what this Gem is capable of


## **Capybara**
* [Capybara](http://teamcapybara.github.io/capybara/)
* [Capybara-Extensions](https://github.com/DavyJonesLocker/capybara-extensions)
* [Capybara-Screenshot](https://github.com/mattheworiordan/capybara-screenshot)

Capybara helps you test web applications by simulating how a real user would interact with your app. It is agnostic about the driver running your tests and comes with Rack::Test and Selenium support built in.

There is a cheatsheet [provided](docs/capybara_cheat_sheet.md) however this is by no means extensive. This should get you going with some tests though, so for more advanced users and those wishing to delve deeper, click on the link in above to see the official documentation
This is the same for both the extensions and screenshot which complements Capybara with additional finders and matchers and takes screenshots automatically on failures respectively. 

*NOTE - the cheatsheet covers some of the extension as well as the official commands*

## **cld2**
Based on Jason Toy's CLD v1.0. Blazing-fast language detection for Ruby provided by Google Chrome's Compact Language Detector v2.0 This has been branched and forked all over the place and the plan is to upgrade ASAP but this functions as expected for now

```ruby
CLD.detect_language("This is a test")
# => {:name => "ENGLISH", :code => "en", :reliable => true}

CLD.detect_language("plus ça change, plus c'est la même chose")
# => {:name => "FRENCH", :code => "fr", :reliable => true}
```

Supported languages:
```
Afrikaans Albanian Arabic Armenian Azerbaijani Basque Belarusian Bengali Bulgarian Catalan Cebuano Cherokee Croatian Czech Chinese Chinese_T Danish Dutch English Estonian Finnish French Galician Ganda Georgian German Greek Gujarati Haitian_Creole Hebrew Hindi Hmong Hungarian Icelandic Indonesian Inuktitut Irish Italian Javanese Japanese Kannada Khmer Kinyarwanda Korean Laothian Latvian Lithuanian Macedonian Malay Malayalam Maltese Marathi Nepali Norwegian Oriya Persian Polish Portuguese Punjabi Romanian Russian Scots_Gaelic Serbian Sinhalese Slovak Slovenian Somali Spanish Swahili Swedish Tagalog Tamil Telugu Thai Turkish Ukrainian Urdu Vietnamese Welsh Yiddish Zulu
```

# **[Cucumber](https://cucumber.io/)**
This is the Gem that provides the Cucumber Gherkin syntax to OTTO. This is documented in part [here](features) but this is the core BDD essence of OTTO so it is a really good idea to go check out their more up-to-date documentation at the link in the Gem name.

# **[Geckodriver-Helper](https://github.com/DevicoSolutions/geckodriver-helper)**

Easy installation and use of geckodriver, that provides the HTTP API described by the WebDriver protocol to communicate with Gecko browsers, such as Firefox.

This has been used to declare the Firefox driver in the [browser_driver.rb](features/support/browser_drivers.rb) and at present does not need any further attention, but if you want to know more, check out the link in the Gem name

# **[Mail](https://github.com/mikel/mail)**
This is a pretty powerful Gem that deals with emails. Currently OTTO does have the capacity to email reports after test runs and this usage can be seen [here](lib/email_reports.rb). However, this is not perfect and unless you know about how email works it is best to leave this alone, or dive into the Gem name link and the internet to learn more!

# **[Rake](https://github.com/ruby/rake)**
Rake is way of defining tasks in Ruby in order to allow the user to call them later without having to repeat code. This is what can be seen as a `Task-Manager`.

There is a lot of good information in the official docs (Gem name link) but some basic usage useful for OTTO are listed below or you ca checkout the [Rakefile](Rakefile).

```ruby
desc 'Run a prebuilt Ruby script'
task :script do
  ruby <path_to_ruby_script>
end

desc 'Print specified text to console'
task :print_text do
puts 'My name is OTTO! I love to get blotto!'
end

desc 'RSpec run for initial unit tests'
RSpec::Core::RakeTask.new(:unit) do |t|
  t.rspec_opts = '--pattern <path_of_unit_tests>'
end

desc 'Run Cucumber features and generate .json report using stated browser driver'
Cucumber::Rake::Task.new(:test) do |t|
  options = ENV['OPTIONS'] ? ENV['OPTIONS'].to_str : '-t @critical_path_controls'
  default = "--format pretty --expand --format json -o '#{OUTPUT_FILE}.json' -f rerun --out rerun.txt"
  t.cucumber_opts = ["#{options} #{default}"]
end
```

Notice how each of these tasks can be called single words names or extended with *underscore* case. it is also worth noting that each task comes with it's own complexities but can be filled with whatever Ruby code you want.

Try putting some custom tasks into the `Rakefile` and running them (as per the [README](README.md). See what you can get it to do!)

# **[Report Builder](https://github.com/rajatthareja/ReportBuilder)**

this Gem helps to build the lovely HTML report that OTTO generates. It takes a number of parameters as inputs but for OTTO, the best example is the [report_builder.rb](lib/report_builder.rb)  script. This shows everything that OTTO uses however, if you want to know more, click on the Gem name

# **[Require All](https://github.com/jarmo/require_all)
This is a great little Gem that helps you require multiple files at once (as long as they are in the same directory).

usage:
```ruby
require 'require_all'

# load all ruby files in the directory "lib" and its subdirectories
require_all 'lib'

# or load all files by using glob
require_all 'lib/**/*.rb'

# or load files in an Array
require_all Dir.glob("blah/**/*.rb").reject { |f| stupid_file? f }

# or load manually specified files
require_all 'lib/a.rb', 'lib/b.rb', 'lib/c.rb', 'lib/d.rb'
```

# **[Rest Client](https://github.com/rest-client/rest-client)**
This Gem is a nice way of interacting with HTTP and RESTful APIs.

Whilst it is capable of some low level technical stuff, the basic usage is nice and simple and is a good way of getting back information from APIs if needed quickly. 

```ruby
require 'rest-client'

RestClient.get(url, headers={})

RestClient.post(url, payload, headers={})
```

This is used in conjunction with `Net::HTTP` (bundled with Ruby) throughout OTTO and the documentation is very good for both. That said, it is a really good idea to brush up on HTTP response codes and general HTTP verbs, construction and API testing in general before delving too deep into this one.


# **[RSpec](https://rspec.info/)**

This Gem is for writing [TDD](https://en.wikipedia.org/wiki/Test-driven_development) tests. It is a behaviour driven development tool and the usage of it within OTTO can be found listed in the [unit test README](unit_tests/README.md)

For more details and usage, check out the link in the Gem name.

# **[Rubocop](https://github.com/rubocop-hq/rubocop)**
This is a Ruby static code analyzer and formatter, based on the Ruby community [style guide](https://docs.rubocop.org])

As long as you have your `rubocol.yml` file defined in the root directory of your project ([here](.rubocop.yml)) then running the following commands will work just fine

```ruby
# Run checks on full code base of Ruby files (exclusions listed in rubocop.yml)
rubocop

# Run checks on full code base of Ruby files (exclusions listed in rubocop.yml) with autocorrect
rubocop -a
```

The autocorrect function is very useful if you have a lot of changes that need to be addressed however you should be very careful about using it all the time. Rubocop can be very clever but sometimes can change code for you in ways you did not expect/want. **ALWAYS CHECK THE RUBOCOP REPORT BEFORE MAKING ANY CHANGES AUTOMATICALLY**

Reading the reports generated by the simple check is a great way of picking up the working practices of the Ruby community, as well as a few updated piecces of code and syntax.

The [Rubocop-performance](https://github.com/rubocop-hq/rubocop-performance) Gem adds in some more functionality to the `.yml` file. Check the link in the Gem name for more details on what can be prescribed in this `.yml`

# **[Selenium Webdriver](https://github.com/SeleniumHQ/selenium)**

WebDriver is a tool for writing automated tests of websites. It aims to mimic the behaviour of a real user, and as such interacts with the HTML of the application. Capybara is the [DSL](https://en.wikipedia.org/wiki/Domain-specific_language) that OTTO uses to communicate with the bindings from Selenium and as such OTTO usage is through Capybara and Site-Prism.

# **[SimpleCov](https://github.com/colszowka/simplecov)**
Code coverage for Ruby 1.9+ with a powerful configuration library and automatic merging of coverage across test suites 

This creates an additional folder that is not committed to GitHub that describes the code coverage you have within your project.

# **[Site Prism](https://github.com/natritmeyer/site_prism)**
A Page Object Model DSL for Capybara. See [Capybara](#Capybara) section for more information or link from Gem name

A basic cheat sheet has been pulled from their GitHub below

```ruby

When /^I navigate to the google home page$/ do
  @home = Home.new
  @home.load
end

Then /^the home page should contain the menu and the search form$/ do
  @home.wait_for_menu # menu loads after a second or 2, give it time to arrive
  expect(@home).to have_menu
  expect(@home).to have_search_field
  expect(@home).to have_search_button
end

When /^I search for Sausages$/ do
  @home.search_field.set "Sausages"
  @home.search_button.click
end

Then /^the search results page is displayed$/ do
  @results_page = SearchResults.new
  expect(@results_page).to be_displayed
end

Then /^the search results page contains 10 individual search results$/ do
  @results_page.wait_for_search_results
  expect(@results_page).to have_search_results count: 10
end

Then /^the search results contain a link to the wikipedia sausages page$/ do
  expect(@results_page.search_result_links).to include "http://en.wikipedia.org/wiki/Sausage"
end
```

# **[Webdrivers](https://github.com/titusfortner/webdrivers)** 
Keep your Selenium WebDrivers updated automatically.

Downloads drivers and directs Selenium to use them.

