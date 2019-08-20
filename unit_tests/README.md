# Unit Test README

OTTO makes use of RSpec to organise and run unit tests. They are broken into the tests themselves and the specs needed to run them.

In order to keep confidence in the functions listed in the tool, if you add anything new ensure you have added unit tests to cover it. For example, the default functions listed in the [utils](lib/utils.rb) all have corresponding unit test specs and tests (apart from *add_screenshot* and *add_browser_logs* which are tested as part of the normal process of operation and have been excluded)

If you are contributing to OTTO any new functions must have unit tests and pull requests will be rejected unless they are present or have a good reason not to.


## Running unit tests
In order to run unit all unit tests you can use
```ruby
rake unit
```

Or if you wish to run only one spec (if you are working on one for example) then you can use
```ruby
rspec <path_to_spec>
```

## Writing unit tests

In order to write unit tests it is highly advised that you look through the RSpec documentation. There are many good tutorials out there as well and it is worth knowing the basics before diving in.

The basic usage within OTTO is to write your test cases in the test directory and write your specs in the specs directory. Simple!

To write your tests you will need to create a module in a new file, for example

```ruby
# frozen_string_literal: true

# Unit test module for percent_of function
module PercentOf
  # Valid percent of large...
  def valid_percent_of_large
    50.percent_of(5000)
  end

  # Valid percent of small...
  def valid_percent_of_small
    10.percent_of(20)
  end

  # Null percent of...
  def null_percent_of
    percent_of
  end
end
```

This module contains 3 tests - *valid_percent_of_large*, *valid_percent_of_small* and *null_percent_of*. These use the function we have called *percent_of* and injects values into our arguments (or nothing in the case of null).

The next step is to create our spec file. This is where we list our expectations.

```ruby
# frozen_string_literal: true

require './unit_tests/unit_test_helper.rb'

include PercentOf

begin
  describe('Valid percent of value - Large') do
    it('/outputs valid percent value') do
      expect(PercentOf.valid_percent_of_large).to eq('1.00%')
    end
  end

 describe('Valid percent of value') do
    it('/raises argument error') do
      expect { raise PercentOf.null_percent_of }.to raise_error(ArgumentError)
    end
  end
end
```

Here you can see that we have described our expectations with a useful and human readable name and then proceeded to list out the expected outcome i.e. that the test *valid_percent_of_large* from the module *PercentOf* will equal 1.00%.

We also have an example of the null argument test where we expect an error to be raised - in this case an *ArgumentError*. 

There are more format related unit tests in the actual file so it is worth looking it over before diving into more test writing.

In order to make sure these tests are usable by the spec we have to `include` the module we are testing, as well as requiring the `unit_test_helper.rb`

## unit_test_helper

This file is tells the spec files the location of the test files as well as which files you are testing and the modules you need to use.

```ruby
# frozen_string_literal: true

require 'json'

# Unit test files
require './unit_tests/tests/create_data_test_id.rb'
require './unit_tests/tests/percent_of.rb'
require './unit_tests/tests/percent_divide_to_float.rb'
require './unit_tests/tests/total_time_split.rb'

# Files under test
require './lib/utils.rb'

# Modules
include Utils
```

In this case our RSpec files require the use of `json` gem and is only testing the `Utils` module of the file `./lib/utils.rb'`

If you write new test files then they need to be added to this list otherwise they will not be seen by the spec files and then the tests will not run correctly.

## Useful tips
* It can be helpful to create a new file like the *unit_test_helper* per file you want to test. This can make things cleaner and clearer, but you must remember to `require '<path_to_your_new_file>'` at the head of your spec.