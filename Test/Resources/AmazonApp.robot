*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
Search for Products
    Go To    http://www.amazon.com
    Wait Until Page Contains    Today's Deals
    Input Text    id=twotabsearchtextbox    Ferrari 458
    Click Button    xpath=//*[@id="nav-search-submit-text"]/input
    Wait Until Page Contains    results for "Ferrari 458"

Select Product from Search Results
    #Click Link    css=#result_0 a.s-access-detail-page
    Click Image    Thrustmaster Ferrari 458 Spider Racing Wheel for Xbox One
    Wait Until Page Contains    Back to results

Add Product to Cart
    #Click Button    id=hlb-ptc-btn-native
    #Click Button    xpath=/html/body/div[2]/div[1]/div[5]/div[5]/div[1]/div[2]/div/div/div/div/div/div/div/form/div/div/div/div/div[7]/div[1]/span/span/span/input
    Wait Until Element Is Enabled    xpath=//*[@id="add-to-cart-button"]
    Click Button    xpath=//*[@id="add-to-cart-button"]
    Wait Until Page Contains    Added to Cart

Begin Checkout
    #Click Link    Proceed to checkout
    #Click Link    xpath=//*[@id="hlb-ptc-btn-native"]
    Wait Until Element Is Enabled    xpath=//*[@id="hlb-ptc-btn"]
    Click Element    xpath=//*[@id="hlb-ptc-btn"]
    Wait Until Page Contains    Create your Amazon account
    #Page Should Contain Element    ap_signin1a_pagelet_title
    Page Should Contain Element    css=#ap_email
    #Element Text Should Be    ap_signin1a_pagelet_title    Sign In
    Element Text Should Be    css=#authportal-main-section > div:nth-child(2) > div > div.a-section > form > div > div > div > h1    Sign-In
