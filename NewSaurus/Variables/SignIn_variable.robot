*** Settings ***
Documentation   Sign In variable
Resource    resource.robot
*** Variables ***
#Sign In Element

${SIGN_IN_BUTTON}   xpath=/html/body/section/section/div/form/div[3]/button
#Sign Up Element
${SIGN_UP_LINK}   xpath=/html/body/section/section/div/div/p/a
#Forgot Your Password
${FORGOTPASSWORD_LINK}  xpath=/html/body/section/section/div/form/div[3]/a
#Elements: textfield, button, ...
#Email
${EMAIL_TEXTFIELD}  XPATH=/html/body/section/section/div/form/div[1]/input
#Password
${PASSWORD_TEXTFIELD}   XPATH=/html/body/section/section/div/form/div[2]/input
#Warming message
${SIGNIN_INVALID_EMAIL_WARMING}    xpath=/html/body/section/section/div/form/div[1]/p[2]
${INVALID_EMAILorPASSWORD_WARMING}     xpath=/html/body/section/section/div/form/p
${BLANK_EMAIL_WARMING}  xpath=/html/body/section/section/div/form/div[1]/p[1]
${BANK_PASSWORD_WARMING}    xpath=/html/body/section/section/div/form/div[2]/p
${EXPIRED_ACCOUNT_WARMING}   xpath=/html/body/section/section/div/form/p
#Assert Sign In Page
${ASSERT_SignIn_PAGE_EMAIL_TEXTFIELD}   ${EMAIL_TEXTFIELD}
${ASSERT_SignIn_PAGE_PASSWORD_TEXTFIELD}    ${PASSWORD_TEXTFIELD}
${ASSERT_SignIn_PAGE_SIGNIN_HEADER}   /html/body/section/section/div/header
${ASSERT_SignIn_PAGE_Email_TEXT}    Email
${ASSERT_SignIn_PAGE_Password_TEXT}    Password
${ASSERT_SignIn_PAGE_ForgotYourPassword?_Element}   ${FORGOTPASSWORD_LINK}
${ASSERT_SignIn_PAGE_SIGNIN_BUTTON}    ${SIGN_IN_BUTTON}
${ASSERT_SignIn_PAGE_DontHaveAnAccount_TEXT}     Don't have an account?
${ASSERT_SignIn_PAGE_SignUp_Element}     ${SIGN_UP_LINK}
${ASSERT_SignIn_PAGE_SIGNIN_MENU}   ${SIGN_IN_MENU}
${ASSERT_SignIn_PAGE_SIGNUP_MENU}   ${SIGN_UP_MENU}