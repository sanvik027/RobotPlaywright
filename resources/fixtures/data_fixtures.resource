*** Settings ***
Documentation     Loads test data from external files.
Library           OperatingSystem

*** Variables ***
${DATA_FILE}      ${CURDIR}/../../data/registration_data.yaml
${USER}           ${None}

*** Keywords ***
Load Registration Data
    [Documentation]    Load registration data from YAML file

    ${yaml_string}=    Get File    ${DATA_FILE}
    ${yaml_data}=      Evaluate    yaml.safe_load($yaml_string)    modules=yaml

    Set Suite Variable    ${USER}    ${yaml_data}[user]

    Log To Console    Loaded User Data: ${USER}