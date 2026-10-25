*** Settings ***
Documentation     Shared utility keywords used across the framework.
Library           String

*** Keywords ***
Generate Random Email
    [Documentation]    Generates a unique email to ensure test idempotency.
    ${rand}=    Generate Random String    8    [LOWER]
    ${email}=   Set Variable    autotest_${rand}@yopmail.com
    RETURN    ${email}