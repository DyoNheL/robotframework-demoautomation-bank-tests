*** Settings ***
Library     SeleniumLibrary
Library     ../../lib/WebDriverLibrary.py
Resource    ../locators/customer_locators.resource
Resource    ../../variables/global_variables.robot


*** Keywords ***
Open Banking App
    Open Chrome Browser    ${BASE_URL}

Login As Customer
    Wait Until Element Is Visible    ${CUSTOMER_LOGIN_BTN}
    Click Button    ${CUSTOMER_LOGIN_BTN}
    Wait Until Element Is Visible    ${CUSTOMER_SELECT}
    Select From List By Label    ${CUSTOMER_SELECT}    ${CUSTOMER_NAME}
    Click Button    ${LOGIN_BTN}
    Page Should Contain Element    ${LOGOUT_BTN}

Deposit Amount
    [Arguments]    ${amount}
    Wait Until Element Is Visible    ${DEPOSIT_TAB}
    Click Element    ${DEPOSIT_TAB}
    Wait Until Element Is Visible    ${DEPOSIT_INPUT}
    Input Text    ${DEPOSIT_INPUT}    ${amount}
    Click Button    ${DEPOSIT_SUBMIT}
    Page Should Contain Element    ${DEPOSIT_SUCCESS}

Withdraw Amount
    [Arguments]    ${amount}
    Wait Until Element Is Visible    ${WITHDRAW_TAB}
    Click Element    ${WITHDRAW_TAB}
    Input Text    ${WITHDRAW_INPUT}    ${amount}
    Wait Until Element Is Visible    ${WITHDRAW_SUBMIT}
    Click Button    ${WITHDRAW_SUBMIT}
    Run Keyword And Return Status    Page Should Contain Element    ${WITHDRAW_SUCCESS}

View Transactions
    Click Element    ${TRANSACTIONS_TAB}
    Wait Until Element Is Visible    ${TRANSACTION_ROWS}
    Page Should Contain Element    ${TRANSACTION_ROWS}
    Click Element    ${BACK_BTN}

Click Logout
    Click button    ${LOGOUT_BTN}
    Page Should Contain Element    ${CUSTOMER_SELECT}
