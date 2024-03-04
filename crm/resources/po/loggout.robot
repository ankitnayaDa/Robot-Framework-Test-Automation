*** Settings ***
Library          SeleniumLibrary

*** Variables ***


*** Keywords ***
Verify Page Loaded
    wait until page contains     Signed Out
