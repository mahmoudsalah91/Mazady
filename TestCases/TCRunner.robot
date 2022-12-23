*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/Keywords/LoginKeywords.robot
Resource    ../Resources/Keywords/CommonKeywords.robot
Resource    ../Resources/Keywords/HomePageKeywords.robot
Resource    ../Resources/Keywords/AddProductKeywords.robot
Test Teardown    close all browsers
*** Variables ***
${InsertAuctionName}    AutomatedAuction
${quantity}     10
${InsertProductAddress}     AutomtedAddress
${InsertAuctionDetails}     Automated Auction details
${InsertReturnAndExchangePolicy}        Automated Return and Exchange policy
${AddBuyNowValue}       10
${AddStartingBidValue}      5
${AddEstimatedValue}        20

*** Test Cases ***
Login test case
    Navigate to Mazaady portal
    Login with valid credentials
    Verify login successfully

Add Auction test case
    Navigate to Mazaady portal
    Login with valid credentials
    Press on profile menu
    Press on add product link
    Press on next button from first tab
    insert auction name         ${InsertAuctionName}
    select main category frist item
    Select sub category second item
    select Department
    Select year
    Select condition
    Select country made
    Add product quantity      ${quantity}
    Select Country Frist item
    Select Region frist item
    Select City frist item
    insert Product Address      ${InsertProductAddress}
    insert Auction Details      ${InsertAuctionDetails}
    Insert Return and Exchange policy       ${InsertReturnAndExchangePolicy}
    upload Main Image successfully
    Press on next button from second tab
    Select Selling Type
    Add Buy Now Value       ${AddBuyNowValue}
    Add Starting Bid Value      ${AddStartingBidValue}
    Add Estimated Value     ${AddEstimatedValue}
    Select Date of Auction
    Select Time of Auction
    Select auction show type
    Press on next button from Third tab
    verify Oops validation message


