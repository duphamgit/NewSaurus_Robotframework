*** Settings ***
Documentation   Sign Up variable

*** Variables ***
#Sign Up Element
##Individual
${INDIVIDUAL_BUTTON}    xpath=/html/body/section/div/div/div/ul/li[1]/a
${INDIVIDUAL_FIRSTNAME_TEXTFIELD}  xpath=/html/body/section/div/div/form/div[1]/input
${INDIVIDUAL_LASTNAME_TEXTFIELD}  xpath=/html/body/section/div/div/form/div[2]/input
${INDIVIDUAL_EMAIL_TEXTFIELD}  xpath=/html/body/section/div/div/form/div[3]/input
${INDIVIDUAL_SIGNUP_PASSWORD_TEXTFIELD}    xpath=/html/body/section/div/div/form/div[4]/input
${INDIVIDUAL_SIGNUP_CONFIRM_PASSWORD_TEXTFIELD}    xpath=/html/body/section/div/div/form/div[5]/input
##Organization
${ORGANIZATION_BUTTON}  xpath=/html/body/section/div/div/div/ul/li[2]/a
${ORGANIZATION_FIRSTNAME_TEXTFIELD}  xpath=/html/body/section/div/div/form/div[1]/input
${ORGANIZATION_LASTNAME_TEXTFIELD}  xpath=/html/body/section/div/div/form/div[2]/input
${ORGANIZATION_EMAIL_TEXTFIELD}  xpath=/html/body/section/div/div/form/div[3]/input
${ORGANIZATION_SIGNUP_PASSWORD_TEXTFIELD}    xpath=/html/body/section/div/div/form/div[4]/input
${ORGANIZATION_SIGNUP_PASSWORD_TEXTFIELD}    xpath=/html/body/section/div/div/form/div[5]/input
${ORGANIZATION_COMPANYNAME_TEXTFIELD}   xpath=/html/body/section/div/div/form/div[6]/div[1]/input
${ORGANIZATION_PHONENUMBER_TEXTFIELD}   xpath=/html/body/section/div/div/form/div[6]/div[2]/input
${ORGANIZATION_ADDRESS_TEXTFIELD}   xpath=/html/body/section/div/div/form/div[6]/div[3]/input
${ORGANIZATION_CITY_TEXTFIELD}  xpath=/html/body/section/div/div/form/div[6]/div[4]/input
${ORGANIZATION_ZIPCODE_TEXTFIELD}   xpath=/html/body/section/div/div/form/div[6]/div[5]/input
${ORGANIZATION_COUNTRY_DROPDOWN}    xpath=/html/body/section/div/div/form/div[6]/div[6]/select
${ORGANIZATION_STATE_TEXTFIELD}     xpath=/html/body/section/div/div/form/div[6]/div[7]/input
##other
${CHECKBOX}     xpath=//*[@id="checkbox1"]
${TermOfUse_LINK}   xpath=/html/body/section/div/div/form/div[7]/label/a[1]
${POLICY_LINK}  xpath=/html/body/section/div/div/form/div[7]/label/a[2]
${INDIVIDUAL_CREATEACCOUNT_BUTTON}     xpath=/html/body/section/div/div/form/div[7]/button
${ORGANIZATION_CREATEACCOUNT_BUTTON}     xpath=/html/body/section/div/div/form/div[8]/button
#Warming message
${SIGNUP_INVALID_EMAIL_WARMING}     xpath=/html/body/section/div/div/form/div[3]/p[2]
${SIGNUP_INDIVIDUAL_PASSWORD_AT_LEAST_6_CHAR}   xpath=/html/body/section/div/div/form/div[4]/p[1]
${SIGNUP_INDIVIDUAL_CONFIRM_PASSWORD_AT_LEAST_6_CHAR}   xpath=/html/body/section/div/div/form/div[5]/p[3]
${SIGNUP_INDIVIDUAL_PASSWORD_DOES_NOT_MATCH}    xpath=/html/body/section/div/div/form/div[5]/p[2]
${SIGNUP_INDIVIDUAL_FIRSTNAME_BLANK}    xpath=/html/body/section/div/div/form/div[1]/p
${SIGNUP_INDIVIDUAL_LASTNAME_BLANK}     xpath=/html/body/section/div/div/form/div[2]/p
${SIGNUP_INDIVIDUAL_EMAIL_BLANK}        xpath=/html/body/section/div/div/form/div[3]/p[1]
${SIGNUP_INDIVIDUAL_PASSWORD_BLANK}     xpath=/html/body/section/div/div/form/div[4]/p[2]
${SIGNUP_INDIVIDUAL_CONFIRM_PASSWORD_BLANK}     xpath=/html/body/section/div/div/form/div[5]/p[1]
${SIGNUP_ACCOUNT_ALREADY_EXISTED_WARMING}     xpath=/html/body/section/div/div/form/p
#[Survey Saurus Notification] popup with content
${SIGNUP_POPUP_REGISTER_SUCCESS}    xpath=//*[@id="dialogContent_0"]/section
${SIGNUP_POPUP_OK_BUTTON}   xpath=//*[@id="dialogContent_0"]/section/div[2]/button
