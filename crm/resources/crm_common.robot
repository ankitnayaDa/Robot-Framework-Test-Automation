*** Settings ***
Library          SeleniumLibrary

*** Variables ***


*** Keywords ***
Begin Web Test
    set selenium speed      .2s
    set selenium timeout    10s
    log                         starting the test case!
    open browser                about:blank   ${BROSWER}
    Maximize Browser Window

End Web Test
    close all browsers
