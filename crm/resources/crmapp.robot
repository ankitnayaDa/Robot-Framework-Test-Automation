*** Settings ***
Resource         ../resources/po/addcustomer.robot
Resource         ../resources/po/customer.robot
Resource         ../resources/po/home.robot
Resource         ../resources/po/loggout.robot
Resource         ../resources/po/signin.robot
Resource         ../resources/po/topnav.robot

*** Variables ***
${BROSWER}                   firefox
${URL}                       https://automationplayground.com/crm/
${VALID_LOGIN_EMAIL}         admin@robotframeworktutorial.com
${VALID_LOGIN_PASSWORD}      qwe


*** Keywords ***
Go To "HOME" Page
    home.Navigate To
    home.Verify Page Loaded
Login With Valid Credential
    [Arguments]    ${Email}     ${Password}
    topnav.Click "Sign In" Link
    signin.Verify Page Loaded
    signin.Login With Valid Credential    ${Email}     ${Password}
    customer.Verify Page Loaded
Add New Customer
    customer.Click "Add Customer" Link
    addcustomer.Verify Page Loaded
    addcustomer.Add New Customer
    customer.Verify Customer Added Successfully
SignOut
      topnav.Click "Sign Out" Link
      loggout.Verify Page Loaded
