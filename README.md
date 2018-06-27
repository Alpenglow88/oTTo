# UI_Automation
UI automation using Capybara, Site Prism and Cucumber in a page object model

Tests are written in Gherkins stored in .feature files stored in the support sub folder and the test steps are descripted in the step definitions.

The env.rb file controls the environment (like a config)
Pages are described under the 'pages' sub folder and are referenced in the env.rb file

Site hook aliases are defined in the hooks.rb file in support sub folder (i.e. @home)



Code coverage is covered using 'simplecov' - work is needed to fully understand utilise this and SHOULD BE IGNORED FOR NOW

'dotenv' is used to stat which env.ruby file the test run will use - this is configurable 

TODO: FULL README
