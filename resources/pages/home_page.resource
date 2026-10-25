*** Settings ***
Documentation     Page Object for the Home Page.
Library           Browser
Resource          ../locators/home_page_locators.resource

*** Keywords ***
Open Browser To Homepage
    [Documentation]    Launches the browser and navigates to the base URL.
    [Arguments]    ${url}    ${browser}=chromium
    New Browser    ${browser}
    New Context    viewport={'width': 1920, 'height': 1080}
    New Page       ${url}
    Set Browser Timeout    15s

Verify Home Page Is Visible
    [Documentation]    Verifies the Home page has loaded successfully.
    Wait For Elements State    ${HOME_LINK}    visible
    ${title}=    Get Title
    Should Be Equal    ${title}    Automation Exercise

Navigate To Signup Login Page
    [Documentation]    Clicks the Signup / Login link in the header.
    Click    ${NAV_SIGNUP_LOGIN}
   