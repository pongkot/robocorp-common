*** Settings ***
Library     RPA.Browser.Selenium


*** Tasks ***
Default


*** Keywords ***
Browser: Wait Until Page Contains
    [Arguments]    ${text}    ${timeout}    ${error}
    Wait Until Page Contains    ${text}    timeout=${timeout}    error=${error}
    RETURN
