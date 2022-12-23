*** Settings ***
Library     SeleniumLibrary
*** Variables ***
${browser}  chrome
${Url}  https://staging.mazaady.com/login
*** Keywords ***
Navigate to Mazaady portal
    open browser      ${Url}      ${browser}
    maximize browser window

close all browsers
    close browser