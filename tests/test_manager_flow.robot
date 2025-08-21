*** Settings ***
Library     SeleniumLibrary
Resource    ../resources/keywords/manager_keywords.resource
Resource    ../resources/keywords/customer_keywords.resource
Resource    ../variables/global_variables.robot


*** Test Cases ***
Manager Add Customer, Open Account, Verify, and Delete
    Open Banking App
    Login As Manager
    Add New Customer    John    Doe    12345
    Open New Account    John Doe    Dollar
    Search Customer    John
    Delete Customer    John
    [Teardown]    Close Browser
