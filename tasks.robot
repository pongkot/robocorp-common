*** Settings ***
Library     RPA.Browser.Selenium
Library     Process
Library     String


*** Tasks ***
Default
    ${result}=    Built-In: Run Process    npm version
    Log    ${result}


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

Browser: Click Image
    [Arguments]    ${locator}    ${modifier}
    Click Image    ${locator}    modifier=${modifier}
    RETURN

Browser: Get Title
    [Documentation]    Returns the title of the current page.
    ${result}=    Get Title
    RETURN    ${result}

Browser: Get Value
    [Documentation]    Returns the value attribute of the element identified by [locator].
    [Arguments]    ${locator}
    ${result}=    Get Value    ${locator}
    RETURN    ${result}

Browser: Get Source
    [Documentation]    Returns the entire HTML source of the current page or frame.
    ${result}=    Get Source
    RETURN    ${result}

Browser: Go Back
    [Documentation]    Simulates the user clicking the back button on their browser.
    Go Back
    RETURN

Browser: Get Location
    [Documentation]    Returns the current browser window URL.
    ${result}=    Get Location
    RETURN    ${result}

Browser: Does Location Contain
    [Documentation]    Does current URL contain expected.
    [Arguments]    ${expected}
    ${result}=    Does Location Contain    ${expected}
    RETURN    ${result}

Built-In: Convert To Number
    [Arguments]    ${item}    ${precision}
    ${result}=    Convert To Number    ${item}    precision=${precision}
    RETURN    ${result}

Built-In: Get Time
    [Arguments]    ${format}
    ${result}=    Get Time    format=${format}
    RETURN    ${result}

Built-In: Run Process
    [Arguments]    ${command}
    ${result}=    Run Process    ${command}
    ${result}=    Built-In: Run Process
    RETURN    ${result}

Built-In: Convert To Lower Case
    [Documentation]    Converts string to lower case.
    [Arguments]    ${string}
    ${result}=    Convert To Lower Case    ${string}
    RETURN    ${result}

Built-In: Convert To Title Case
    [Documentation]    Converts string to title case.
    [Arguments]    ${string}    ${exclude}
    ${result}=    Convert To Title Case    ${string}    exclude=${exclude}
    RETURN    ${result}

Built-In: Convert To Upper Case
    [Documentation]    Converts string to upper case.
    [Arguments]    ${string}
    ${result}=    Convert To Upper Case    ${string}
    RETURN    ${result}
