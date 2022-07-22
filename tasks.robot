*** Settings ***
Library     RPA.Browser.Selenium


*** Tasks ***
Default


*** Keywords ***
Browser: Wait Until Page Contains
    [Arguments]    ${text}    ${timeout}    ${error}
    Wait Until Page Contains    ${text}    timeout=${timeout}    error=${error}
    RETURN

Browser: Does Page Contain
    [Arguments]    ${text}
    Does Page Contain    ${text}
    RETURN

Browser: Reload Page
    Reload Page
    RETURN

Browser: Unselect Checkbox
    [Arguments]    ${locator}
    Unselect Checkbox    ${locator}
    RETURN

Browser: Select Checkbox
    [Arguments]    ${locator}
    Unselect Checkbox    ${locator}
    RETURN

Browser: Select From List By Value
    [Arguments]    ${locator}    ${value}
    Select From List By Value    ${locator}    ${value}
    RETURN

Browser: Select Radio Button
    [Arguments]    ${group_name}    ${value}
    Select Radio Button    ${group_name}    ${value}
    RETURN
