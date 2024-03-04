*** Settings ***
Library          SeleniumLibrary

*** Variables ***


*** Keywords ***
Verify Page Loaded
    wait until page contains    Login
Login With Valid Credential
    [Arguments]    ${Email}     ${Password}
    Fill "Email" Feild          ${Email}
    Fill "Password" Feild       ${Password}
    Click "Submit" Button

Fill "Email" Feild
    [Arguments]    ${Email}
    input text                  id=email-id     ${Email}

Fill "Password" Feild
    [Arguments]    ${Password}
    input text                  id=password     ${Password}

Click "Submit" Button
    click button                id=submit-id
