*** Settings ***
Library          SeleniumLibrary

*** Variables ***
${CUSTMOER_HEADER_LEBEL}                Our Happy Customers
${CUSTMOER_ADDCUSTOMER_LINK}            id=new-customer
${CUSTMOER_ADDCUSTOMERSUCCESS_TEXT}     Success! New customer added.

*** Keywords ***
Verify Page Loaded
    wait until page contains        ${CUSTMOER_HEADER_LEBEL}
Click "Add Customer" Link
    click link                      ${CUSTMOER_ADDCUSTOMER_LINK}
Verify Customer Added Successfully
     wait until page contains       ${CUSTMOER_ADDCUSTOMERSUCCESS_TEXT}
