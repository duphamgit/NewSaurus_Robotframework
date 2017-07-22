*** Settings ***
Documentation  Variable for Setting
Resource  resource.robot

*** Variables ***
#Profile - Admin User
#Profile - Individual User
${SETTING_INDIVIDUAL_PROFILE_LINK}  xpath=/html/body/section/div/div/div/ul/li[1]/a
${SETTING_INDIVIDUAL_HEADER}    xpath=/html/body/section/div/div/form/div[1]/h4
${SETTING_INDIVIDUAL_FIRSTNAME_TEXTFIELD}   xpath=/html/body/section/div/div/form/div[1]/div[1]/input
${SETTING_INDIVIDUAL_LASTNAME_TEXTFIELD}    xpath=/html/body/section/div/div/form/div[1]/div[2]/input
${SETTING_INDIVIDUAL_EMAIL_TEXTFIELD}   xpath=/html/body/section/div/div/form/div[2]/div/input
${SETTING_INDIVIDUAL_CHANGE_PASSWORD_BUTTON}    xpath=/html/body/section/div/div/form/div[3]/ul/li[1]/a
${SETTING_INDIVIDUAL_CANCEL_BUTTON}     xpath=/html/body/section/div/div/form/div[3]/ul/li[2]/a
${SETTING_INDIVIDUAL_SAVE_BUTTON}   xpath=/html/body/section/div/div/form/div[3]/ul/li[3]/button
#Profile - Organization User
${SETTING_ORGANIZATION_PROFILE_LINK}    xpath=/html/body/section/div/div/div/ul/li[1]/a
${SETTING_ORGANIZATION_COMPANY_HEADER}  xpath=/html/body/section/div/div/form/div[1]/h4
${SETTING_ORGANIZATION_COMPANY_NAME_TEXTFIELD}  xpath=/html/body/section/div/div/form/div[1]/div[1]/div[1]/input
${SETTING_ORGANIZATION_PHONE_TEXTFIELD}     xpath=/html/body/section/div/div/form/div[1]/div[1]/div[2]/input
${SETTING_ORGANIZATION_ADDRESS_TEXTFIELD}   xpath=/html/body/section/div/div/form/div[1]/div[2]/div[1]/input
${SETTING_ORGANIZATION_CITY_TEXTFIELD}      xpath=/html/body/section/div/div/form/div[1]/div[2]/div[2]/input
${SETTING_ORGANIZATION_COUNTRY_DROPDOWN}   xpath=/html/body/section/div/div/form/div[1]/div[3]/div[1]/div/select
${SETTING_ORGANIZATION_STATE_TEXTFIELD}     xpath=/html/body/section/div/div/form/div[1]/div[3]/div[2]/input
${SETTING_ORGANIZATION_ZIP_CODE_TEXTFIELD}  xpath=/html/body/section/div/div/form/div[1]/div[3]/div[3]/input
${SETTING_ORGANIZATION_PERSONAL_HEADER}     xpath=/html/body/section/div/div/form/div[2]/h4
${SETTING_ORGANIZATION_FIRSTNAME_TEXTFIELD}     xpath=/html/body/section/div/div/form/div[2]/div[1]/input
${SETTING_ORGANIZATION_LASTNAME_TEXTFIELD}  xpath=/html/body/section/div/div/form/div[2]/div[2]/input
${SETTING_ORGANIZATION_EMAIL_TEXTFIELD}     xpath=/html/body/section/div/div/form/div[3]/div/input
${SETTING_ORGANIZATION_CHANGE_PASSWORD_BUTTON}    xpath=/html/body/section/div/div/form/div[4]/ul/li[1]/a
${SETTING_ORGANIZATION_CANCEL_BUTTON}     xpath=/html/body/section/div/div/form/div[4]/ul/li[2]/a
${SETTING_ORGANIZATION_SAVE_BUTTON}   xpath=/html/body/section/div/div/form/div[4]/ul/li[3]/button

#Notifications
