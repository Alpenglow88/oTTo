# @tag1
# @tag2

# Feature: Example feature name

# I want to see my example feature file for use with BDD scenarios in Gherkin language syntax

# Background: 
#     Given I open the website 'https://www.google.com'
    
# @test
# Scenario: Get a search results value back from Google
#     When I enter 'hello world' into the search bar
#     And I send the enter key to search Google
#     Then I get the number search results found

# @single_test_tag
# Scenario Outline: An example of test scenario with multiple parameters
#     When I enter '<x>' into the search bar
#     And I send the enter key to search Google
#     Then I get the number search results found
#     Then I see the value '<x>' in the search bar
#     And The page title is '<page_title>'

#     Examples:
#     |x|page_title|
#     |toasted|toasted - Google Search|
#     |cheese|cheese - Google Search|
#     |sandwich|sandwich - Google Search|