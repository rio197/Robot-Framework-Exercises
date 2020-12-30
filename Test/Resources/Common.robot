*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
Begin Web Test
    Open Browser    about:blank    Chrome

End Web Test
    Close Browser

Insert Test Data
    Custom Keyword 1
    Custom Keyword 2

Cleanup Test Data
    Log    I am cleaning up the test data...

Custom Keyword 1
    Log    Doing keyword 1

Custom Keyword 2
    Log    Doing keyword 2...