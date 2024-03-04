*** Settings ***
Library  RequestsLibrary
Resource    ../resources/api.robot

*** Keywords ***
Session
       Create Session    ${SESSION_NAME}    ${BASE_URL}


