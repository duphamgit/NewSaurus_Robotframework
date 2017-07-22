*** Settings ***
Documentation  Variable for Forgot your password
Resource  resource.robot
*** Variables ***
${FOR_GOT_PASSWORD_HEADER}      xpath=/html/body/section/section/div/header
${FOR_GOT_PASSWORD_EMAIL_TEXTFIELD}     xpath=/html/body/section/section/div/form/div[1]/input
${FOR_GOT_PASSWORD_SUBMIT_BUTTON}   xpath=/html/body/section/section/div/form/div[3]/button
#warming message
${FOR_GOT_PASSWORD_EMAIL_BLANK_WARMING}     xpath=/html/body/section/section/div/form/div[1]/div/p[1]
${FOR_GOT_PASSWORD_INVALID_FORMAT_EMAIL_WARMING}    xpath=/html/body/section/section/div/form/div[1]/div/p[2]
#No account with that userId exists
${FOR_GOT_PASSWORD_INVALID_EMAIL_WARMING}   xpath=/html/body/section/section/div/form/div[2]/p

