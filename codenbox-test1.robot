*** Settings ***
Library    SeleniumLibrary
Documentation    Write Automatetest script for web testing.
*** Variables ***
${URL_CODENBOX}    https://codenboxautomationlab.com/practice/ 
${BROWSER}    Chrome
${TEXT1}    Thai

*** Test Cases ***
Tc1 Open Browser URL Codenbox
    Open Browser Codenbox

Tc2 Select radio2
    Open Browser Codenbox
    Select Radio Button    radioButton    radio2

Tc3 Search for the word Thailand
    Open Browser Codenbox
    Input Text    id=autocomplete    ${TEXT1}
    Wait Until Page Contains Element    xpath=//li[contains(.,'Thailand')]    timeout=10s
    Click Element   xpath=//li[contains(.,'Thailand')]

Tc4 Select API In Drop Down List
    Open Browser Codenbox
    Select From List By Value    id=dropdown-class-example    option3

Tc5 Select Checkbox Option1 And Option3
    Open Browser Codenbox
    Execute JavaScript    window.scrollBy(0, 500)  
    Select Checkbox    id=checkBoxOption1
    Select Checkbox    id=checkBoxOption3

Tc6 Mouse Hover Don't Click
     Open Browser Codenbox
     Mouse Over    id=mousehover
     Sleep    2s 

*** Keywords ***
Open Browser Codenbox
    Open Browser    ${URL_CODENBOX}    ${BROWSER}
    Maximize Browser Window
    Wait Until Page Contains    CodenBox AutomationLab    timeout=10s