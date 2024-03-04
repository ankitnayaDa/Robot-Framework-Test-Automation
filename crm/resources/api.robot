*** Settings ***
Library  RequestsLibrary

*** Variables ***
${BASE_URL}                 https://console.dac.nokia.com/api/v2/um
${SESSION_NAME}             ndac
${USERNAME}                 esdel.ank@ndac.com
${INVALID_USERNAME}         esdel.ank
${PASSWORD}                 0bS3.DEL.!.
${INVALID_PASSWORD}         1213234
@{USERNAME_PASSWORD}        esdel.ank@ndac.com    0bS3.DEL.!.

*** Keywords ***
PostLogInSession
        ${headers}     Create Dictionary  Content-Type=application/json
        [Arguments]    ${data}
        ${response}    POST On Session    ${SESSION_NAME}    /loginSession    headers=${HEADERS}    json=${data}
        [Return]       ${response}
CheckResults
        [Arguments]    ${response}    ${status_text}
        ${response_json}=    Evaluate    json.loads('''${response.content}''')    json
        ${status}=    Set Variable    ${response_json["status"]}
        ${status_code}=    Set Variable    ${status["status_code"]}
        Log    Status code extracted from response body: ${status_code}
        Should Be Equal As Strings    ${status_code}    ${status_text}
