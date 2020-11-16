*** Settings ***
Library    SeleniumLibrary

*** Variables ***


*** Test Cases ***
Should be able to search for product
    Open Browser    http://www.amazon.com    chrome
    Sleep    3s
    Input Text      id=twotabsearchtextbox    Ferrari 458
    Sleep    3s
    #Click Button    css=#nav-search-submit-text > input
    Click Button    xpath=//*[@id="nav-search-submit-text"]/input
    Sleep    3s
    Click Image    Thrustmaster Ferrari 458 Spider Racing Wheel for Xbox One
    Close Browser

*** keywords ***
