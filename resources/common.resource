*** Settings ***
Library     SeleniumLibrary


*** Keywords ***
Click When Visible
    [Arguments]    ${locator}
    Wait Until Element Is Visible    ${locator}
    Click Element    ${locator}

Wait Until Page Should Contain Element
    [Arguments]    ${locator}
    Wait Until Element Is Visible    ${locator}
    Page Should Contain Element    ${locator}

Input Text When Visible
    [Arguments]    ${locator}    ${text}
    Wait Until Element Is Visible    ${locator}
    Input Text    ${locator}    ${text}

Wait Until Dropdown is Visible
    [Arguments]    ${locator}    ${value}
    Wait Until Page Contains Element    ${locator}
    Select From List By Label    ${locator}    ${value}
