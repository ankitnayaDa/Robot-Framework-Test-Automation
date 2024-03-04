*** Settings ***
Library          SeleniumLibrary

*** Variables ***
${ADDCUSTMOER_SUBMIT_BUTTON}                 Submit

*** Keywords ***
Verify Page Loaded
    wait until page contains        Add Customer
Add New Customer
    Fill Customer Feild
    Click Submit Button

Fill Customer Feild
    input text                  id=EmailAddress     ankitnaya@gmail.com
    input text                  id=FirstName        ankit
    input text                  id=LastName         nayak
    input text                  id=City             Dallas
    Scroll Page Down
    select from list by value   id=StateOrRegion    TX
    select radio button         gender              male
    select checkbox             name=promos-name

Click Submit Button
    click button                ${ADDCUSTMOER_SUBMIT_BUTTON}

Scroll Page Down
    Execute JavaScript    window.scrollTo(0, document.body.scrollHeight);

Scroll Page Up
    Execute JavaScript    window.scrollTo(0, 0);
