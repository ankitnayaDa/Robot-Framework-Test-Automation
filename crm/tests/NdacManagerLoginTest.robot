*** Settings ***
Documentation  Test the login functionality for NDAC manager
Resource    ../resources/api.robot
Resource    ../resources/common.robot
Test Setup    Session

*** Test Cases ***
Post NDAC Manager LogIn Test with valid credentials
    [Documentation]  Test the login functionality with valid credentials
    [Tags]   smoke
    ${data}=  Create Dictionary  email_id=@{USERNAME_PASSWORD}[0]  password=@{USERNAME_PASSWORD}[0]
    ${response}=     api.PostLogInSession    ${DATA}
    api.CheckResults     ${response}         SUCCESS


*** Test Cases ***
Post NDAC Manager LogIn Test with invalid credentials
    [Tags]   smoke
    [Documentation]  Test the login functionality with valid credentials
    ${data}  Create Dictionary  email_id=${INVALID_USERNAME}  password=${PASSWORD}
    ${response}=     api.PostLogInSession    ${DATA}
    api.CheckResults     ${response}         FAILURE

