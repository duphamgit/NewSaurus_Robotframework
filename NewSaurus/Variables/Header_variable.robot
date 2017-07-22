*** Settings ***
Documentation   Header Variables

*** Variables ***
${SIGN_IN_MENU}  xpath=/html/body/header/div/div/div/div/div[2]/div/ul/li[2]/a
${SIGN_UP_MENU}  xpath=/html/body/header/div/div/div/div/div[2]/div/ul/li[1]/a
${ASSERT_SURVEYSAURUS_HEADER_LOGO}     XPATH=/html/body/header/div/div/div/div/div[1]/div/h1/img
${HEADER_PROJECT_LINK}  xpath=/html/body/header/div/div/div/div/div[2]/div/ul/li[1]/a
${HEADER_HELP_LINK}     xpath=
${HEADER_SETTING_LINK}  xpath=/html/body/header/div/div/div/div/div[2]/div/ul/li[2]/a
${HEADER_INBOX_LINK}    xpath=
${HEADER_WELCOME_LINK}  xpath=//*[@id="username-header"]
${HEADER_LOGOUT_BUTTON}     xpath=//*[@id="btn-logout-header"]