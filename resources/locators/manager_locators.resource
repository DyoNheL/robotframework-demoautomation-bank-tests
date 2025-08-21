*** Variables ***
${MANAGER_LOGIN_BTN}        xpath=//button[contains(text(),'Bank Manager Login')]
${ADD_CUSTOMER_TAB}         xpath=//button[contains(text(),'Add Customer')]
${OPEN_ACCOUNT_TAB}         xpath=//button[contains(text(),'Open Account')]
${CUSTOMERS_TAB}            xpath=//button[contains(text(),'Customers')]

# Add Customer Form
${FNAME_INPUT}              xpath=//input[@placeholder='First Name']
${LNAME_INPUT}              xpath=//input[@placeholder='Last Name']
${POSTCODE_INPUT}           xpath=//input[@placeholder='Post Code']
${ADD_CUSTOMER_SUBMIT}      xpath=//button[@type='submit']

# Open Account Form
${CUSTOMER_SELECT_ACC}      xpath=//select[@id='userSelect']
${CURRENCY_SELECT}          xpath=//select[@id='currency']
${PROCESS_BTN}              xpath=//button[text()='Process']

# Customers Page
${CUSTOMER_TABLE}           xpath=//table/tbody/tr
${CUSTOMER_SEARCH}          xpath=//input[@placeholder='Search Customer']
${DELETE_BTN}               xpath=//button[text()='Delete']
