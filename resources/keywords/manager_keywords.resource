*** Settings ***
Resource    ../locators/customer_locators.resource
Resource    ../locators/manager_locators.resource
Resource    ../../variables/global_variables.robot
Resource    ../common.resource


*** Keywords ***
Login As Manager
    Click When Visible    ${MANAGER_LOGIN_BTN}
    Wait Until Page Should Contain Element    ${ADD_CUSTOMER_TAB}

Add New Customer
    [Arguments]    ${fname}    ${lname}    ${postcode}
    Click Element    ${ADD_CUSTOMER_TAB}
    Input Text When Visible    ${FNAME_INPUT}    ${fname}
    Input Text    ${LNAME_INPUT}    ${lname}
    Input Text    ${POSTCODE_INPUT}    ${postcode}
    Click Button    ${ADD_CUSTOMER_SUBMIT}
    Handle Alert    ACCEPT

Open New Account
    [Arguments]    ${customer_name}    ${currency}
    Click Element    ${OPEN_ACCOUNT_TAB}
    Wait Until Dropdown is Visible    ${CUSTOMER_SELECT_ACC}    ${customer_name}
    Wait Until Dropdown is Visible    ${CURRENCY_SELECT}    ${currency}
    Click Button    ${PROCESS_BTN}
    Handle Alert    ACCEPT

Search Customer
    [Arguments]    ${name}
    Click Element    ${CUSTOMERS_TAB}
    Input Text When Visible    ${CUSTOMER_SEARCH}    ${name}
    Page Should Contain    ${name}

Delete Customer
    [Arguments]    ${name}
    Click Element    ${CUSTOMERS_TAB}
    Input Text When Visible    ${CUSTOMER_SEARCH}    ${name}
    Click Element    ${DELETE_BTN}

Click Logout
    Click button    ${LOGOUT_BTN}
    Page Should Contain Element    ${CUSTOMER_SELECT}
