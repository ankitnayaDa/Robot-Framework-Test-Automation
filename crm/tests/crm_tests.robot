*** Settings ***
Documentation    This is some basic info about suite
Library          SeleniumLibrary
Resource         ../resources/crm_common.robot
Resource         ../resources/crmapp.robot
Test Setup       Begin Web Test
Test Teardown    End Web Test
#Run the script:
#robot -d results tests/crm.robot

*** Test Cases ***
Sould be able to add new customer
    [Documentation]         This is some basic info about the test
    [Tags]                  smoke
    crmapp.Go To "HOME" Page
    #Login
    crmapp.Login With Valid Credential    ${VALID_LOGIN_EMAIL}    ${VALID_LOGIN_PASSWORD}
    #Add Customer
    crmapp.Add New Customer
    #Logout
    crmapp.SignOut
