*** Settings ***
Library     SeleniumLibrary
Library     ../../lib/WebDriverLibrary.py
Resource    ../locators/customer_locators.resource
Resource    ../../variables/global_variables.robot
Resource    ../common.resource


*** Keywords ***
Open Banking App
    Open Chrome Browser    ${BASE_URL}

Login As Customer
    Click When Visible    ${CUSTOMER_LOGIN_BTN}
    Wait Until Dropdown is Visible    ${CUSTOMER_SELECT}    ${CUSTOMER_NAME}
    Click Button    ${LOGIN_BTN}
    Page Should Contain Element    ${LOGOUT_BTN}

Deposit Amount
    [Arguments]    ${amount}
    Click When Visible    ${DEPOSIT_TAB}
    Input Text When Visible    ${DEPOSIT_INPUT}    ${amount}
    Click Button    ${DEPOSIT_SUBMIT}
    Page Should Contain Element    ${DEPOSIT_SUCCESS}

Withdraw Amount
    [Arguments]    ${amount}
    Click When Visible    ${WITHDRAW_TAB}
    Input Text    ${WITHDRAW_INPUT}    ${amount}
    Click When Visible    ${WITHDRAW_SUBMIT}
    Run Keyword And Return Status    Page Should Contain Element    ${WITHDRAW_SUCCESS}

View Transactions
    Click Element    ${TRANSACTIONS_TAB}
    Wait Until Page Should Contain Element    ${TRANSACTION_ROWS}
    Click Element    ${BACK_BTN}

Click Logout
    Click button    ${LOGOUT_BTN}
    Page Should Contain Element    ${CUSTOMER_SELECT}
