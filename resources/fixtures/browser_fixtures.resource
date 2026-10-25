*** Settings ***
Documentation     Browser setup and teardown keywords.
Library           Browser
Resource          ../../variables/env.resource

*** Keywords ***
Start Browser Session
    Log    Launching browser: ${BROWSER}    console=True
    New Browser    ${BROWSER}    headless=${HEADLESS}
    Set Browser Timeout    ${TIMEOUT}

Stop Browser Session
    Close Browser    ALL

Open New Page
    New Context    viewport={'width': 1920, 'height': 1080}
    New Page       ${BASE_URL}

Close Page
    Close Context