*** Settings ***
Documentation       Test Case 1 - Register a new user on automationexercise.com
Library             Browser

Resource            ../../resources/pages/home_page.resource
Resource            ../../resources/pages/login_signup_page.resource
Resource            ../../resources/pages/account_info_page.resource
Resource            ../../resources/pages/account_created_page.resource
Resource            ../../resources/keywords/common.resource
Resource            ../../resources/fixtures/data_fixtures.resource

Suite Setup         Load Registration Data

Test Tags           register    e2e    regression

*** Test Cases ***
Register New User Successfully
    [Documentation]    Full registration flow with a random email

    ${email}=    Generate Random Email

    Log To Console    User First Name: ${USER}[first_name]

    Verify Home Page Is Visible
    Navigate To Signup Login Page

    Verify New User Signup Is Visible
    Start New User Signup    ${USER}[first_name]    ${email}

    Verify Enter Account Information Is Visible
    Fill Account Information    ${USER}

    Create Account

    Verify Account Created
    Continue After Account Creation