*** Settings ***
Library     SeleniumLibrary
Documentation    Write Automatetest script for web testing.

*** Variables ***
${URL_CODENBOX}    https://codenboxautomationlab.com/practice/ 
${BROWSER}    Chrome
${TEXT1}    Thai

*** Test Cases ***
Test Rev00 Codenbox
    Open Browser    ${URL_CODENBOX}    ${BROWSER}
    Maximize Browser Window
    Wait Until Page Contains    CodenBox AutomationLab    timeout=10s
    Select Radio Button    radioButton    radio2
    Input Text    id=autocomplete    ${TEXT1}
    Wait Until Page Contains Element    xpath=//li[contains(.,'Thailand')]    timeout=10s
    Click Element   xpath=//li[contains(.,'Thailand')]
    Select From List By Value    id=dropdown-class-example    option3
    Execute JavaScript    window.scrollBy(0, 500)  
    Select Checkbox    id=checkBoxOption1
    Select Checkbox    id=checkBoxOption3
    Wait Until Page Contains Element    xpath=//legend[contains(text(),'Mouse Hover Example')]    timeout=10s
    Mouse Over    id=mousehover
    Sleep    2s


