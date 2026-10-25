*** Settings ***
Documentation     Page Object for the Login / Signup Page.
Library           Browser
Resource          ../locators/login_signup_page_locators.resource
Resource          ../keywords/common.resource

*** Keywords ***
Verify New User Signup Is Visible
    [Documentation]    Verifies the "New User Signup!" heading is present.
    Wait For Elements State    ${NEW_USER_SIGNUP}    visible
    Get Text    ${NEW_USER_SIGNUP}    ==    New User Signup!

Start New User Signup
    [Documentation]    Fills the initial signup form (name & email) and submits.
    [Arguments]    ${name}    ${email}
    Fill Text    ${SIGNUP_NAME_INPUT}     ${name}
    Fill Text    ${SIGNUP_EMAIL_INPUT}    ${email}
    Click        ${SIGNUP_BUTTON}