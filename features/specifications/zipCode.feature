# valid zip code and invalid zip code requests

@validAndInvalidZipCode
Feature: As a user I want to validate whether a ZIP code is valid or invalid

    @validZipCode
    Scenario: Make an HTTP request to verify that it is a valid zip code
        Given that I have a valid zip code
        When I make a request
        Then I must know if this zip code is valid

    @invalidZipCode
    Scenario: Make an HTTP request to verify that it is a invalid zip code
        Given that I have a invalid zip code
        When I make a request
        Then I must know if this zip code is invalid