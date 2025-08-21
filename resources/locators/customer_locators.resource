*** Variables ***
# LOGIN LOCATORS
${CUSTOMER_LOGIN_BTN}       xpath=//button[contains(text(),'Customer Login')]
${CUSTOMER_SELECT}          xpath=//select[@id='userSelect']
${LOGIN_BTN}                xpath=//button[text()='Login']
${LOGOUT_BTN}               xpath=//button[text()='Logout']

# CUSTOMER LOCATORS
${WELCOME_MSG}              xpath=//span[contains(@class,'fontBig')]
${DEPOSIT_TAB}              xpath=//button[contains(text(),'Deposit')]
${DEPOSIT_INPUT}            xpath=//input[@ng-model='amount']
${DEPOSIT_SUBMIT}           xpath=//button[text()='Deposit']
${DEPOSIT_SUCCESS}          xpath=//span[contains(text(),'Deposit Successful')]

${WITHDRAW_TAB}             xpath=//button[contains(text(),'Withdrawl')]
${WITHDRAW_INPUT}           xpath=//input[@ng-model='amount']
${WITHDRAW_SUBMIT}          xpath=//button[text()='Withdraw']
${WITHDRAW_SUCCESS}         xpath=//span[contains(text(),'Transaction successful')]
${WITHDRAW_FAIL}            xpath=//span[contains(text(),'Transaction Failed')]

${TRANSACTIONS_TAB}         xpath=//button[contains(text(),'Transactions')]
${TRANSACTION_ROWS}         xpath=//table/tbody/tr
${RESET_BTN}                xpath=//button[text()='Reset']
${BACK_BTN}                 xpath=//button[text()='Back']
