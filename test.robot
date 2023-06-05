*** Settings ***
Library    SeleniumLibrary
Library    BuiltIn
*** Test Cases ***
Example Test Case
    Open Browser    https://mb-admin-uat.hatthabank.com/login    chrome
    Maximize Browser Window
    Input text      id=input-14     mbReviewer
    Input password      id=input-18     mbReviewer@123
    Click Button     //*[@id="__layout"]/div/div[1]/div/div/div[1]/div/div/div/div/div/div[3]/div/form/div[2]/div[3]/button
    Sleep       10s
