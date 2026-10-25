*** Settings ***
Documentation     Page Object for the Account Information (Registration) Page.
Library           Browser
Resource          ../locators/account_info_page_locators.resource

*** Keywords ***
Verify Enter Account Information Is Visible
    [Documentation]    Verifies the account information form has loaded.
    Wait For Elements State    ${ACCOUNT_INFORMATION}    visible

Fill Account Information
    [Documentation]    Fills out the entire registration form using a user data dictionary.
    [Arguments]    ${user}
    
    # --- Basic Info ---
    Click        ${TITLE_MR}
    Fill Text    ${PASSWORD_INPUT}    ${user}[password]
    
    # --- Date of Birth ---
    Select Options By    ${DAYS_DROPDOWN}      value    ${user}[dob_day]
    Select Options By    ${MONTHS_DROPDOWN}    value    ${user}[dob_month]
    Select Options By    ${YEARS_DROPDOWN}     value    ${user}[dob_year]
    
    # --- Checkboxes ---
    Check Checkbox    ${NEWSLETTER_CHECKBOX}
    Check Checkbox    ${OFFERS_CHECKBOX}
    
    # --- Address Info ---
    Fill Text    ${FIRST_NAME_INPUT}    ${user}[first_name]
    Fill Text    ${LAST_NAME_INPUT}     ${user}[last_name]
    Fill Text    ${COMPANY_INPUT}       ${user}[company]
    Fill Text    ${ADDRESS1_INPUT}      ${user}[address1]
    Fill Text    ${ADDRESS2_INPUT}      ${user}[address2]
    Select Options By    ${COUNTRY_DROPDOWN}    label    ${user}[country]
    Fill Text    ${STATE_INPUT}         ${user}[state]
    Fill Text    ${CITY_INPUT}          ${user}[city]
    Fill Text    ${ZIPCODE_INPUT}       ${user}[zipcode]
    Fill Text    ${MOBILE_INPUT}        ${user}[mobile]

Create Account
    [Documentation]    Clicks the Create Account button to submit the form.
    Click    ${CREATE_ACCOUNT_BUTTON}