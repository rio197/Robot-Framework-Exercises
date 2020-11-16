*** Settings ***
Documentation    This is some basic info about the whole suite
Library    SeleniumLibrary

*** Variables ***
    ${BROWSER}    headlesschrome

*** Test Cases ***
User must sign in to checkout
    [Documentation]    This is some basic info about the test
    [Tags]    Smoke
    Open Browser  http://www.amazon.com  ${BROWSER}
    Wait Until Page Contains    Today's Deals
    Input Text    id=twotabsearchtextbox    Ferrari 458
    Click Button    xpath=//*[@id="nav-search-submit-text"]/input
    Wait Until Page Contains    results for "Ferrari 458"
    #Click Link    css=#result_0 a.s-access-detail-page
    Click Image    Thrustmaster Ferrari 458 Spider Racing Wheel for Xbox One
    Wait Until Page Contains    Back to results
    #Click Button    id=hlb-ptc-btn-native
    #Click Button    xpath=/html/body/div[2]/div[1]/div[5]/div[5]/div[1]/div[2]/div/div/div/div/div/div/div/form/div/div/div/div/div[7]/div[1]/span/span/span/input
    Click Button    xpath=//*[@id="add-to-cart-button"]

    Wait Until Page Contains    Added to Cart
    #Click Link    Proceed to checkout
    Click Link    xpath=//*[@id="hlb-ptc-btn-native"]
    Wait Until Page Contains    Create your Amazon account
    #Page Should Contain Element    ap_signin1a_pagelet_title
    Page Should Contain Element    css=#ap_email
    #Element Text Should Be    ap_signin1a_pagelet_title    Sign In
    Element Text Should Be    css=#authportal-main-section > div:nth-child(2) > div > div.a-section > form > div > div > div > h1    Sign-In

    Close Browser

*** Keywords ***

