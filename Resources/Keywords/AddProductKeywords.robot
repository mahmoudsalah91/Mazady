*** Settings ***
Resource    ../PO/AddProuductPage.robot

*** Keywords ***
Press on next button from first tab
    AddProuductPage.NextStep_button

insert auction name
   [Arguments]    ${auctionName}
     AddProuductPage.Auction_Name_txt        ${auctionName}

select main category frist item
     AddProuductPage.MainCategory_DDL
     AddProuductPage.mainCategory_Fristelment_item

Select sub category second item
    AddProuductPage.SubCategory_DDL
    AddProuductPage.SubCategory_Secondelement_item

select Department
    AddProuductPage.Department_DDL
    AddProuductPage.Department_frist_item

Select year
    AddProuductPage.Year_DDL

Select condition
    AddProuductPage.Condition_DDL
    AddProuductPage.Condtion_New_item

Select country made
    AddProuductPage.Country_made_DDL
    AddProuductPage.Country_made_fristItem

Add product quantity
     [Arguments]       ${Quantity}
     AddProuductPage.Quantity_txt       ${Quantity}

Select Country Frist item
    AddProuductPage.Country_DDL
    AddProuductPage.Country_Fristelement_item

Select Region frist item
    AddProuductPage.Region_DDL
    AddProuductPage.Region_frist_item

Select City frist item
    AddProuductPage.City_DDL
    AddProuductPage.City_frist_item

insert Product Address
    [Arguments]    ${Address}
    AddProuductPage.ProductAddress_txt       ${Address}

insert Auction Details
    [Arguments]    ${AuctionDetails}
    AddProuductPage.Auction_Details_txt     ${AuctionDetails}

Insert Return and Exchange policy
    [Arguments]    ${ReturnExchangepolicy}
    AddProuductPage.Return_Exchange_policy_txt      ${ReturnExchangepolicy}

upload Main Image successfully
    AddProuductPage.upload_Main_Image

Press on next button from second tab
    AddProuductPage.NextStep3_button

Select Selling Type
    AddProuductPage.SellingType_DLL
    AddProuductPage.selling_type_estimation value

Add Buy Now Value
    [Arguments]    ${BuyValue}
    AddProuductPage.Buy_Now_Value_txt       ${BuyValue}

Add Starting Bid Value
    [Arguments]    ${BidValue}
    AddProuductPage.Starting_Bid_Value_txt      ${BidValue}

Add Estimated Value
    [Arguments]    ${EstimatedValue}
    AddProuductPage.Estimated_Value_txt     ${EstimatedValue}

Select Date of Auction
    AddProuductPage.Select_Date

Select Time of Auction
    AddProuductPage.Select_Time

Select auction show type
    AddProuductPage.auction_show_type

Press on next button from Third tab
    AddProuductPage.Third tab_button

verify Oops validation message
    AddProuductPage.Oops_message_popup




