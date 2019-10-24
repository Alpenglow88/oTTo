# **lib**

Within the `lib` folder you will find much of the supporting library of files and definitions used throughout oTTo, as well as many helper and utility functions. These have a few general functions stored here but these are intended to be added to as your project code increases. This allows you to keep clean working code while referencing out to the functions and code snippets help within the library.

Each boilerplate entry in the library is described here below but as your usage of oTTo increases the entries into the `lib` folder, it is helpful to update this documentation.

**If you find other generic snippets and functions that you think would be useful for others, please feel free to raise a pull request here and share the love!**

* __site_prism__ this directory is the library from one of the main underlying technologies of oTTo. This is cloned straight from the [Site Prism repository](https://github.com/site-prism/site_prism) after every release. This also contains additional sub class file for allowing snake case page names to be used in step definitions. *Any additional extensions to Site Prism or its functionality will be added here*. The **site_prism.rb** file is also related to this repo and again is cloned alongside the other library entries.
    
* __code_inject.rb__ this file can be used to organise any code for injection into the page under test that isn't native Ruby. This is a useful way of sorting the additional scripts and it is best to keep the files separated by language i.e. *javascript_inject.rb*, *python_inject.rb* etc etc. The .rb extension is required to allow you to assign global constants to each script for easily calling them in your step definitions later on.

* __constants.rb__ this file can be used to store global constants. This is useful to store element names (for example) that feed into your step definitions. This allows you to store this name in one location and if the element name changes then you only have to change it in one place and this is reflected across the whole project. The same can be said for API URLs of host addresses or whatever you want to be globally available.

* __email_reports.rb__ this is a small script that can be used to email test reports (for example) to a specified person(s) email address. This utilised the `mail` gem and needs to be configured before use. *See file for self evident configuration*.

* __helpers.rb__ this file contains helper functions that are to be used within test steps for ease of testing. These are generally **specific** helpers for your code and project but an example is included.

* __report_builder__ this file is a small script designed to generate a report built from the results of the Cucumber testing that oTTo uses. These reports are generated as part of the general usage of oTTo but must be configured from the `config.rb` file found in the root directory. By default, the report will be build from the rerun reports generated as these are tests that have failed twice (see usage) however it is possible to change this to the initial run report by changing which code is commented out within the file. 

* __utils.rb__ this file contains useful functions that are to be used within test steps for ease of testing. These are generally **non-specific** helpers for your code and project and some potentially helpful examples are included.