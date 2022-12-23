*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${WaitingTime}     60
*** Keywords ***
ProfileMenu_icon
    wait until element is visible    //div[@class='d-flex flex-row']//div[@class='dropdown action-dropdown user-actions']//a[@class='btn btn-social d-flex flex-column dropdown-toggle']//img       ${WaitingTime}
    click element           //div[@class='d-flex flex-row']//div[@class='dropdown action-dropdown user-actions']//a[@class='btn btn-social d-flex flex-column dropdown-toggle']//img


AddProduct_link
    wait until element is visible    //div[@class='dropdown-menu dropdown-menu-left']//a[normalize-space()='Add Product']            ${WaitingTime}
    click element     //div[@class='dropdown-menu dropdown-menu-left']//a[normalize-space()='Add Product']