Feature: Landing page UI and functionality feature

    I want to see my landing page image and have it function correctly when clicked

    Background:
        Given I open the 'landing' page URL

    Scenario: Landing page image UI
        Then I can see the landing page image

    Scenario: Landing page image functionality
        When I click on the landing page image
        Then I am taken to the home page