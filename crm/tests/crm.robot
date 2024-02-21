*** Settings ***
Documentation    This is some basic info about suite
Library          SeleniumLibrary

#Run the script:
#robot -d results tests/crm.robot

*** Variables ***



*** Test Cases ***
Sould be able to add new customer
    [Documentation]         This is some basic info about the test
    [Tags]                  1006    smoke   contacts
    #initializing selenium
    set selenium speed      .2s
    set selenium timeout    5s

    #open the broser
    log                         starting the test case!
    open browser                https://automationplayground.com/crm/    firefox
    Maximize Browser Window

    wait until page contains     Customers Are Priority One

    click link                   id=SignIn
    wait until page contains     Login

    input text                  id=email-id     admin@robotframeworktutorial.com
    input text                  id=password     qwe
    click button                id=submit-id
    wait until page contains    Our Happy Customers

    click link                   id=new-customer
    wait until page contains     Add Customer

    input text                  id=EmailAddress     ankitnaya@gmail.com
    input text                  id=FirstName        ankit
    input text                  id=LastName         nayak
    input text                  id=City             Dallas
    Scroll Page Down
    select from list by value   id=StateOrRegion    TX
    select radio button         gender              male
    select checkbox             name=promos-name
    click button                Submit
    wait until page contains    Success! New customer added.

    click link                  Sign Out
    wait until page contains    Signed Out

    sleep                   3s
    close all browsers


*** Keywords ***
Scroll Page Down
    Execute JavaScript    window.scrollTo(0, document.body.scrollHeight);

Scroll Page Up
    Execute JavaScript    window.scrollTo(0, 0);

Zoom In
    Execute JavaScript    document.body.style.zoom = '1.2';

Zoom Out
    Execute JavaScript    document.body.style.zoom = '0.8';
