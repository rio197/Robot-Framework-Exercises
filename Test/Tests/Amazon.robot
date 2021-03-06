*** Settings ***
Documentation    This is some basic info about the whole suite
Resource    ../Resources/AmazonApp.robot
Resource    ../Resources/Common.robot
Suite Setup    Common.Insert Test Data
Test Setup    Common.Begin Web Test
Test Teardown      Common.End Web Test
Suite Teardown    Common.Cleanup Test Data

*** Variables ***
${BROWSER}    chrome

*** Test Cases ***
User can search for products
    [Documentation]    This is some basic info about the test
    [Tags]    Smoke
    AmazonApp.Search for Products

User must sign in to checkout
    [Documentation]    This is some basic info about the test
    [Tags]    Smoke
    AmazonApp.Search for Products
    AmazonApp.Select Product from Search Results
    AmazonApp.Add Product to Cart
    AmazonApp.Begin Checkout
