*** Settings ***
Resource                  ../resources/imports.robot

*** Keywords ***
Access login
    Open Browser    https://mb-admin-uat.hatthabank.com/login    chrome
    Maximize Browser Window
    Input text      id=input-14     admin
    Input password      id=input-18     admin
    Click Button     //*[@id="__layout"]/div/div[1]/div/div/div[1]/div/div/div/div/div/div[3]/div/form/div[2]/div[3]/button  
    Click Button     
    Sleep  5s
    # Click Element   xpath://*[@id="app"]/div/nav/div[1]/div[1]/div[5]/div/div/div[2]
Access logout
    Wait Until Page Contains Element    class=user-view     timeout=3s 
    Click Element    class=user-view  
    Wait Until Element Is Visible    xpath=//*[@role='menuitem']    timeout=3s
    Click Element    xpath=//div[text()='Logout']
    