Feature: Search in Application

    As melakukan pencarian pada website

    Scenario: valid search
        Given I visited the website
        When I did a search on the search box menu
        Then I succeeded in searching