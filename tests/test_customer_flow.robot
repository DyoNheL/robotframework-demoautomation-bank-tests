*** Settings ***
Library     SeleniumLibrary
Resource    ../resources/keywords/customer_keywords.resource
Resource    ../variables/global_variables.robot


*** Test Cases ***
Customer Login, Deposit, Withdraw, and Transactions
    Open Banking App
    Login As Customer
    Deposit Amount    ${DEPOSIT_AMOUNT}
    ${withdraw_status}=    Withdraw Amount    ${WITHDRAW_AMOUNT}
    IF    not ${withdraw_status}
        Log    Withdrawal failed (not enough balance)
    END
    View Transactions
    Click Logout
    [Teardown]    Close Browser
