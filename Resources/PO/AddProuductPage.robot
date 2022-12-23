*** Settings ***
Library    SeleniumLibrary
*** Variables ***
${WaitingTime}     60
*** Keywords ***
NextStep_button
    wait until element is visible    //button[@type='button'][normalize-space()='Next Step']      ${WaitingTime}
    click element    //button[@type='button'][normalize-space()='Next Step']

Auction_Name_txt
    [Arguments]    ${auctionName}
   wait until element is visible     //input[@placeholder='Auction Name']       ${WaitingTime}
   input text       //input[@placeholder='Auction Name']        ${auctionName}

MainCategory_DDL
     wait until element is visible    //input[@placeholder='select category']    ${WaitingTime}
     click element    //input[@placeholder='select category']

MainCategory_Fristelment_item
    wait until element is visible   //li[@id='vs3__option-0']  ${WaitingTime}
    click element     //li[@id='vs3__option-0']

SubCategory_DDL
    wait until element is visible    //input[@placeholder='select subcategory']      ${WaitingTime}
    click element    //input[@placeholder='select subcategory']

SubCategory_Secondelement_item
    wait until element is visible    //li[@id='vs4__option-1']     ${WaitingTime}
    click element    //li[@id='vs4__option-1']

Department_DDL
    wait until element is visible   //div[@id='vs10__combobox']//div[@class='vs__selected-options']  ${WaitingTime}
    click element    //div[@id='vs10__combobox']//div[@class='vs__selected-options']

Department_frist_item
    wait until element is visible    //li[@id='vs10__option-2']   ${WaitingTime}
    click element    //li[@id='vs10__option-2']

Year_DDL
    wait until element is visible   //input[@name='22']     ${WaitingTime}
    click element   //input[@name='22']
    wait until element is visible   //span[normalize-space()='2020']    ${WaitingTime}
    click element    //span[normalize-space()='2020']

Condition_DDL
    wait until element is visible    //input[@placeholder='Select Condition']   ${WaitingTime}
    click element       //input[@placeholder='Select Condition']

Condtion_New_item
    wait until element is visible    //li[@id='vs11__option-2']  ${WaitingTime}
    click element    //li[@id='vs11__option-2']

Country_made_DDL
    wait until element is visible    //div[@id='vs12__combobox']//input[@type='search']      ${WaitingTime}
    click element    //div[@id='vs12__combobox']//input[@type='search']

Country_made_fristItem
    wait until element is visible    //div[@id='vs12__combobox']         ${WaitingTime}
    click element    //div[@id='vs12__combobox']

Quantity_txt
    [Arguments]    ${Quantity}
    wait until element is visible    //input[@placeholder='Quantity']        ${WaitingTime}
    input text    //input[@placeholder='Quantity']        ${Quantity}


Country_DDL
    wait until element is visible     //div[@id='vs5__combobox']  ${WaitingTime}
    click element    //div[@id='vs5__combobox']

Country_Fristelement_item
    wait until element is visible    //div[@id='vs5__combobox']       ${WaitingTime}
    click element    //div[@id='vs5__combobox']

Region_DDL
    wait until element is visible    //div[@id='vs6__combobox']//div[@class='vs__selected-options']     ${WaitingTime}
    click element    //div[@id='vs6__combobox']//div[@class='vs__selected-options']

Region_frist_item
    wait until element is visible   //li[@id='vs6__option-0']      ${WaitingTime}
    click element   //li[@id='vs6__option-0']

City_DDL
    wait until element is visible    //input[contains(@aria-labelledby,'vs7__combobox')]         ${WaitingTime}
    click element    //input[contains(@aria-labelledby,'vs7__combobox')]

City_frist_item
    wait until element is visible    //ul[contains(@id,'vs7__listbox')]     ${WaitingTime}
    click element    //ul[contains(@id,'vs7__listbox')]

ProductAddress_txt
    [Arguments]    ${Address}
    wait until element is visible    //input[contains(@name,'address')]
    input text    //input[contains(@name,'address')]        ${address}

Auction_Details_txt
    [Arguments]    ${AuctionDetails}
    select frame    //iframe[@id='tinymce_description_ifr']
    input text    //*[@data-id='tinymce_description']       ${AuctionDetails}
    unselect frame

Return_Exchange_policy_txt
    [Arguments]    ${ReturnExchangepolicy}
    select frame    //iframe[@id='tinymce_policy_ifr']
    input text    //*[@data-id='tinymce_policy']      ${ReturnExchangepolicy}
    unselect frame

upload_Main_Image
    wait until element is visible       //div[@id='step-2']//button[@type='button'][normalize-space()='Next Step']
    choose file     main_image        C:/Users/QC/PycharmProjects/Mazaady Portal/Resources/Upload/2.jpg
    sleep    2

NextStep3_button
    wait until element is visible       //div[@id='step-2']//button[@type='button'][normalize-space()='Next Step']
    click element    //div[@id='step-2']//button[@type='button'][normalize-space()='Next Step']

SellingType_DLL
    wait until element is visible    //select[@name='selling_type']     ${WaitingTime}
    click element   //select[@name='selling_type']

selling_type_estimation value
    wait until element is visible    //option[@value='estimation_value']        ${WaitingTime}
    click element    //option[@value='estimation_value']

Buy_Now_Value_txt
    [Arguments]    ${BuyValue}
    wait until element is visible    //input[@placeholder='Buy Now Value']      ${WaitingTime}
    input text    //input[@placeholder='Buy Now Value']        ${BuyValue}

Starting_Bid_Value_txt
    [Arguments]    ${BidValue}
    wait until element is visible    //input[@placeholder='Starting Bid Value']      ${WaitingTime}
    input text    //input[@placeholder='Starting Bid Value']        ${BidValue}

Estimated_Value_txt
    [Arguments]    ${EstimatedValue}
    wait until element is visible    //input[@placeholder='Estimated Value']      ${WaitingTime}
    input text    //input[@placeholder='Estimated Value']        ${EstimatedValue}

Select_Date
    wait until element is visible    //input[@id='vue-button-to-open-date']
    click element    //input[@id='vue-button-to-open-date']
    sleep    1
    wait until element is visible    //li[@id='mddtp-date__current']//span[@class='mddtp-picker__cell'][normalize-space()='30']
    click element    //li[@id='mddtp-date__current']//span[@class='mddtp-picker__cell'][normalize-space()='30']
    sleep    1
    wait until element is visible    //button[@id='mddtp-date__ok']
    click element    //button[@id='mddtp-date__ok']

Select_Time
    wait until element is visible    //label[@for='vue-button-to-open-time']//span
    click element    //label[@for='vue-button-to-open-time']//span
    wait until element is visible    //button[@id='mddtp-time__ok']
    click element    //button[@id='mddtp-time__ok']


auction_show_type
    wait until element is visible       //div[@class='row mb-2']//div[@class='col-12']//span[@class='switcher']     ${WaitingTime}
    click element       //div[@class='row mb-2']//div[@class='col-12']//span[@class='switcher']

Third tab_button
    wait until element is visible    //div[@id='step-3']//button[@type='button'][normalize-space()='Next Step']      ${WaitingTime}
    click element    //div[@id='step-3']//button[@type='button'][normalize-space()='Next Step']
    sleep    2

Oops_message_popup
    wait until element is visible   //div[@class='swal-modal']
    element should contain          //div[@class='swal-text']       the product price should be greater than starting bid value and estimated value