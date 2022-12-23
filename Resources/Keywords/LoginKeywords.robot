*** Settings ***
Resource    ../PO/Login.robot

*** Keywords ***
Login with valid credentials
    enter email
    enter password
    click sumbit

Verify login successfully
    Navigation_verification_message
