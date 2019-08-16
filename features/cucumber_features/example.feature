@tag1
@tag2

Feature: Example feature name

I want to see my example feature file for use with BDD scenarios in Gherkin language syntax

Background: 
    Given I show the number 4 in the console
    And I open Google

Scenario: Measure a value
    When I enter 'hello world' into the search bar
    And I press the search button
    Then I get a list of search results

@single_test_tag
Scenario Outline: An example of test scenario with multiple parameters
    When I do an action '<x>'
    And I do another action '<y>'
    Then I get an outcome '<outcome>'

    Examples:
    |x|y|outcome|
    |x_example_1|y_example_1|outcome_1|
    |x_example_2|y_example_2|outcome_2|
    |x_example_3|y_example_3|outcome_3|
