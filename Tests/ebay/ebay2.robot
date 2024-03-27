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
    Input Text  xpath://*[@id="gh-ac"]  text=mobile
    Click Button  locator=xpath://*[@id="gh-btn"]
    Wait Until Page Contains  text=results for mobile  timeout=10
    Click Element  locator=xpath=//span[@id='nid-nbn-22']/button/span/span
    Sleep  5s
    Click Element  locator=xpath=//ul[@id='s0-55-19-5-4[0]-68[1]-23-content-menu']/li[2]/a/span

    Sleep  5s
    Wait Until Element Contains  locator=//*[@id="s0-55-19-7-3-5[0]-2-2-1-list"]/li[1]/div/a/div  text=New  timeout=10s
    Sleep  time_=5s


Finish TestCase
    Close Browser 