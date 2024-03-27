*** Settings ***
Documentation  Basic Search Functionality
Library  SeleniumLibrary

*** Variables ***




*** Test Cases ***
Verify basic search functionality for ebay
    [Documentation]  This is a test case verfiy basic search
    [tags]  Functional

    Start TestCase
    Verify Search Results
    Finish TestCase
   


*** Keywords ***

Start TestCase
    Open Browser  https://www.ebay.co.uk/  chrome
    Maximize Browser Window

Verify Search Results
    Input Text  xpath://*[@id="gh-ac"]  text=computer
    Click Button  locator=xpath://*[@id="gh-btn"]
    Wait Until Page Contains  text=results for computer  timeout=10

Finish TestCase
    Close Browser 