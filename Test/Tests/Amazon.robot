*** Settings ***
Documentation    This is some basic info about the whole suite
Resource    ../Resources/AmazonApp.robot
Resource    ../Resources/Common.robot

*** Variables ***
${BROWSER}    chrome

*** Test Cases ***
User must sign in to checkout
    [Documentation]    This is some basic info about the test
    [Tags]    Smoke
    Common.Begin Web Test
    AmazonApp.Search for Products
    AmazonApp.Select Product from Search Results
    AmazonApp.Add Product to Cart
    AmazonApp.Begin Checkout
    Common.End Web Test
