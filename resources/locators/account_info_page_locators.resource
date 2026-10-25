*** Variables ***
# --- Account Information Page ---
${ACCOUNT_INFORMATION}      text=Enter Account Information

# Gender
${TITLE_MR}                 css=#id_gender1

# Password & DOB
${PASSWORD_INPUT}           css=input[data-qa="password"]
${DAYS_DROPDOWN}            css=select[data-qa="days"]
${MONTHS_DROPDOWN}          css=select[data-qa="months"]
${YEARS_DROPDOWN}           css=select[data-qa="years"]

# Checkboxes
${NEWSLETTER_CHECKBOX}      css=#newsletter
${OFFERS_CHECKBOX}          css=#optin

# Address fields
${FIRST_NAME_INPUT}         css=input[data-qa="first_name"]
${LAST_NAME_INPUT}          css=input[data-qa="last_name"]
${COMPANY_INPUT}            css=input[data-qa="company"]
${ADDRESS1_INPUT}           css=input[data-qa="address"]
${ADDRESS2_INPUT}           css=input[data-qa="address2"]
${COUNTRY_DROPDOWN}         css=select[data-qa="country"]
${STATE_INPUT}              css=input[data-qa="state"]
${CITY_INPUT}               css=input[data-qa="city"]
${ZIPCODE_INPUT}            css=input[data-qa="zipcode"]
${MOBILE_INPUT}             css=input[data-qa="mobile_number"]

# Submit button
${CREATE_ACCOUNT_BUTTON}    css=[data-qa='create-account']