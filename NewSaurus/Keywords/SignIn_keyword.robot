*** Settings ***
Documentation  Sign In Keywords
Resource  resource.robot

*** Keywords ***
#Step/Action
##SIGN IN
Enter [Main] screen URL to Browser
    open browser    ${SERVER}   ${BROWSER}
    maximize browser window
    set selenium speed  ${DELAY}
    main screen should be open
Go to [Sign In] screen
    click element  ${SIGN_IN_MENU}
    Observe and check GUI of [Sign In] screen
Observe and check GUI of [Sign In] screen
    #Assert [LOG IN] Screen
    wait until page contains element    ${ASSERT_SignIn_PAGE_EMAIL_TEXTFIELD}
    wait until page contains element    ${ASSERT_SignIn_PAGE_PASSWORD_TEXTFIELD}
    #wait until page contains element   ${ASSERT_SignIn_PAGE_SIGNIN_HEADER}
    #wait until page contains element   ${ASSERT_SignIn_PAGE_Email_TEXT}
    #wait until page contains element   ${ASSERT_SignIn_PAGE_Password_TEXT}
    wait until page contains element    ${ASSERT_SignIn_PAGE_ForgotYourPassword?_Element}
    wait until page contains element    ${ASSERT_SignIn_PAGE_SIGNIN_BUTTON}
    #wait until page contains    ${ASSERT_SignIn_PAGE_DontHaveAnAccount_TEXT}
    wait until page contains element    ${ASSERT_SignIn_PAGE_SignUp_Element}
    wait until page contains element    ${ASSERT_SURVEYSAURUS_HEADER_LOGO}
    wait until page contains element    ${ASSERT_SignIn_PAGE_SIGNIN_MENU}
    wait until page contains element    ${ASSERT_SignIn_PAGE_SIGNUP_MENU}
    #capture [SIGN IN] Screen page screenshot
    capture page screenshot  ${SCREENSHOT}-SIGN_IN_SCREEN.png
Input valid Email
    input text  ${EMAIL_TEXTFIELD}  ${VALID_EMAIL}
Input invalid format of email
    input text  ${EMAIL_TEXTFIELD}  ${INVALID_EMAIL}
Input email of account has expired
    input text  ${EMAIL_TEXTFIELD}  ${EXPIRED_ACCOUNT_EMAIL}
Input valid Password
    INPUT TEXT  ${PASSWORD_TEXTFIELD}   ${VALID_PASSWORD}
Input invalid Password
    INPUT TEXT  ${PASSWORD_TEXTFIELD}   ${INVALID_PASSWORD}
Input password of account has expired
    input text  ${PASSWORD_TEXTFIELD}  ${EXPIRED_ACCOUNT_PASSWORD}
Click on [Sign In] button
    click element   ${SIGN_IN_BUTTON}
    set selenium speed  ${DELAY}

#Expected
##SIGN IN
Main Screen Should Be Open
    #Assert [Main] Screen
    wait until page contains element    ${ASSERT_SignIn_PAGE_SIGNUP_MENU}
    wait until page contains element    ${ASSERT_SignIn_PAGE_SIGNIN_MENU}
    wait until page contains element    ${ASSERT_SURVEYSAURUS_HEADER_LOGO}
    #capture Main Screen page screenshot
    capture page screenshot  ${SCREENSHOT}-MAIN_SCREEN.png
User can sign in successfully and redirect to [Home] screen
    wait until page contains  All Project
    capture page screenshot  ${SCREENSHOT}-HOME_SCREEN.png

##Warning message##
[SIGN IN] Warning message Email is invalid is displayed until User input valid value
    wait until page contains element    ${SIGNIN_INVALID_EMAIL_WARMING}
Warning message Invalid email or password is displayed notify that Email and Password do not match
    wait until page contains element    ${INVALID_EMAILorPASSWORD_WARMING}
Warning message is displayed "Please enter your email"
    wait until page contains element  ${BLANK_EMAIL_WARMING}
Warning message is displayed "Please enter your password"
    wait until page contains element  ${BANK_PASSWORD_WARMING}
Warning message is display "Inactive account"
    wait until page contains element  ${EXPIRED_ACCOUNT_WARMING}
