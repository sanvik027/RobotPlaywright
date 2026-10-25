*** Settings ***
Documentation     Page Object for the Account Created success page.
Library           Browser
Resource          ../locators/account_created_page_locators.resource

*** Keywords ***
Verify Account Created
    [Documentation]    Verifies the success message is visible.
    Wait For Elements State    ${ACCOUNT_CREATED_HEADER}    visible
    Get Text    ${ACCOUNT_CREATED_HEADER}    ==    Account Created!

Continue After Account Creation
    [Documentation]    Clicks the Continue button to return to the homepage.
    Click    ${CONTINUE_BUTTON}