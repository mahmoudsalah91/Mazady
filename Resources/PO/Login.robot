*** Settings ***
Library    SeleniumLibrary

*** Variables ***

*** Keywords ***


enter email
    input text    email  test22@gmail.com
enter password
    input text    password   123456789
click sumbit
    click element    //button[normalize-space()='Login']
    sleep    5
Navigation_verification_message
       title should be    Mazady - Home
