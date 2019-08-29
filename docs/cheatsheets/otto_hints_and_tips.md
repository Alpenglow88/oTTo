# **OTTO Cheatsheet**

This is intended to be a cheat sheet and hint guide for functionality and storage of code snippets for reuse across projects. 

**All of these are freely available through a bit of research. I strongly recommend you research any snippet before using it so that you know what it does!**

This is ever growing as useful things are found - feel free to add to this if you have something interesting/useful/fun to add to this list of functions and usage :grimacing:

# **Code snippets**

## **Ruby**
These are useful functions and snippets of code in Ruby

## **Snippets**

Puts a newline in the console output - surprisingly useful for debugging
```ruby
puts "\n"
```

Converts string to json
```ruby
data = data_source.to_json
```

Split array separated by ',' (can be reused for any separating character)
```ruby
    X = <values>.split(',')
```

Join array separated by ',' (can be reused for any separating character)
```ruby
    X = <values>.join(',')
```

Delete character from string
```ruby
    X = <values>.delete('[]')
```

Write to a new file in current directory - useful for storing data for use later but not within global constant
```ruby
    File.open('tmp.rb', 'w') do |f|
      f.write('<data>')
      puts 'data stored in tmp file
```

Delete tmp files created if they exist
```ruby
  File.delete('<tmp.rb>') if File.exist?('<tmp.rb>')
```

```ruby
# Send a particular key event
page.<element>.send_keys :space

# Click an element to a particular pixel point in XY coordinates 
page.<element>.click(x: 1, y: 1)

# Get CSS value for a specified style from the page under test
page.<element>.style('<css_style>')


```ruby
# Presents integer or float as a percent of a second integer or float
 {int}.percent_of({int})
 ```

```ruby
# Loop through input value until condition is met with built in cyclical timeout
    n = 0
    until <condition>
      n += 1
      # 2000 Represents the number of rotations through code to avoid getting stuck in never ending loop. Configurable as needed.
      break if n == 2000
    end
```

Returns the corresponding value found in a hash table

```ruby
  def hash_function(input)
    hash = {
      'input_value1' => 'hash_value_1',
      'input_value2' => 'hash_value_2',
      'input_value3' => 'hash_value_3',
    }

    hash[input]
  end

```

Use NetHTTP to get JSON Auth bearer token (check location of token with API documentation)

```ruby
    uri = URI.parse(<sign_in_api>)
    request = Net::HTTP::Post.new(uri)
    request.content_type = 'application/json'
    request.body = JSON.dump(
      Email: <username>,
      Password: <password>
    )
    req_options = {
      use_ssl: uri.scheme == 'https'
    }
    response =
      Net::HTTP.start(uri.hostname, uri.port, req_options) do |http|
        http.request(request)
      end
    token = JSON.parse(response.body)['AuthToken']['Token']
```

## RestClient

## Parse array sourced from API endpoint

Basic usage to get a value 

```ruby
    response = RestClient.get(<api_endpoint>)
    value_ = JSON.parse(response.body)['<Value>']
    puts value
```

Basic usage to get a value several nested values deep

```ruby
    response = RestClient.get(<api_endpoint>)
    nested_value_ = JSON.parse(response.body)['<Value>'][<entry_number>]['<Nested_Value>']
    puts nested_value_
```
Usage to cycle through API response values and get a value based on specified criteria, otherwise pick one at random from first 10 entries

```ruby
    response = RestClient.get(<api_endpoint>)
    body = JSON.parse(response.body)['<array_values>']
    wanted_value_from_array_entries = body[rand(9)]['<wanted_value>']
    (0..9).each do |i|
      next unless body[i]['<criteria_option_1>'] == false && rb_live[i]['<criteria_option_2>'] == '<value>'

      wanted_value_from_array_entries = rb_live[i]['wanted_value']
      puts wanted_value_from_array_entries
      break
    end
```

## Ruby matchers
```ruby
# equal
expect(<value_a>).to eq(<value_b>)
expect(<value_a>) == <value_b>

# not equal
expect(<value_a>) != <value_b>

# greater than
expect(<value_a>) >= <value_b>

# less than
expect(<value_a>) <= <value_b>

# 00:00:00 timecode matching
expect(<timecode>).to match(/([0-9]|0[0-9]|1[0-9]|2[0-9]):[0-5][0-9]$/)

# Value to be within range
expect(<value_a>).to be_within(<tolerance>).of(<expected_value>)

```