*** Settings ***
Documentation  Sign Up keywords
Resource  resource.robot

*** Keywords ***
##SIGN UP
###INDIVIDUAL
Go to [Create an account] screen
    click element  ${sign_up_menu}
    #Observe and check GUI of Sign Up for [Individual] screen
Observe and check GUI of Sign Up for [Individual] screen
    wait until page contains element  ${INDIVIDUAL_BUTTON}
    wait until page contains element  ${ORGANIZATION_BUTTON}
    wait until page contains element  ${INDIVIDUAL_FIRSTNAME_TEXTFIELD}
    wait until page contains element  ${INDIVIDUAL_LASTNAME_TEXTFIELD}
    wait until page contains element  ${INDIVIDUAL_EMAIL_TEXTFIELD}
    wait until page contains element  ${INDIVIDUAL_SIGNUP_PASSWORD_TEXTFIELD}
    wait until page contains element  ${INDIVIDUAL_SIGNUP_CONFIRM_PASSWORD_TEXTFIELD}
    wait until page contains element  ${CHECKBOX}
    wait until page contains element  ${INDIVIDUAL_CREATEACCOUNT_BUTTON}
Select [Individual] tab
    click element  ${INDIVIDUAL_BUTTON}
Input into [First Name]
    INPUT TEXT  ${INDIVIDUAL_FIRSTNAME_TEXTFIELD}   ${INDIVIDUAL_FIRSTNAME}
Input into [Last Name]
    INPUT TEXT  ${INDIVIDUAL_LASTNAME_TEXTFIELD}   ${INDIVIDUAL_LASTNAME}
Input into [Email]
    #random email yopmail
    ${INDIVIDUAL_EMAIL} =   generate random string  8   [LETTERS]
    INPUT TEXT  ${INDIVIDUAL_EMAIL_TEXTFIELD}   ${INDIVIDUAL_EMAIL}@yopmail.com
[SIGN UP] Input invalid format of email
    input text  ${INDIVIDUAL_EMAIL_TEXTFIELD}  ${INVALID_EMAIL}
[SIGN UP] Input valid Password
    INPUT TEXT  ${INDIVIDUAL_SIGNUP_PASSWORD_TEXTFIELD}   ${VALID_PASSWORD}
[SIGN UP] Input valid Confirm Password Password
    INPUT TEXT  ${INDIVIDUAL_SIGNUP_CONFIRM_PASSWORD_TEXTFIELD}   ${VALID_PASSWORD}
[SIGN UP] Input value for [Password] field less than 6 characters long
    input text  ${INDIVIDUAL_SIGNUP_PASSWORD_TEXTFIELD}     ${PASSWORD_LESS_THAN_6_CHAR}
[SIGN UP] Input value for [Confirm Password] field less than 6 characters long
    input text  ${INDIVIDUAL_SIGNUP_CONFIRM_PASSWORD_TEXTFIELD}     ${PASSWORD_LESS_THAN_6_CHAR}
[SIGN UP] Input password and confirmation do not match
    input text  ${INDIVIDUAL_SIGNUP_PASSWORD_TEXTFIELD}     ${VALID_PASSWORD}
    input text  ${INDIVIDUAL_SIGNUP_CONFIRM_PASSWORD_TEXTFIELD}     ${INVALID_PASSWORD}
[SIGN UP] Leave blank any required fields
    wait until page contains element  ${INDIVIDUAL_FIRSTNAME_TEXTFIELD}
[SIGN UP] Check into "I agree to Survey Saurus Terms of Use and Policy" checkbox
    click element  ${CHECKBOX}
[SIGN UP] Input existed email into [Email] field
    INPUT TEXT  ${INDIVIDUAL_EMAIL_TEXTFIELD}   ${INDIVIDUAL_EMAIL_EXISTED}
[SIGN UP] Input valid value into other fields
     Input into [First Name]
     Input into [Last Name]
     Input into [Email]
     [SIGN UP] Input valid Password
     [SIGN UP] Input valid Confirm Password Password
#Expected
[SIGN UP] Checkbox is unchecked
    wait until element is not visible  ${INDIVIDUAL_CREATEACCOUNT_BUTTON}
[SIGN UP] show [Survey Saurus Notification] popup with content: "Thank you for registering.An email has been sent to email [Email Registry] Please check your email and active the account." Button: OK
    wait until page contains element  ${SIGNUP_POPUP_REGISTER_SUCCESS}
User can click on [OK] button to close notification popup
    click button  ${SIGNUP_POPUP_OK_BUTTON}
redirect to [Home] screen
    wait until page contains element  ${ASSERT_SURVEYSAURUS_HEADER_LOGO}
    wait until page contains element  ${SIGN_IN_MENU}
    wait until page contains element  ${SIGN_UP_MENU}
###ORGANIZATION


##SIGN UP
Click on individual [CREATE ACCOUNT] button
    click element  ${INDIVIDUAL_CREATEACCOUNT_BUTTON}
Click on organization [CREATE ACCOUNT] button
    click element  ${ORGANIZATION_CREATEACCOUNT_BUTTON}
User can input into [First Name] field successful
    capture page screenshot  ${SCREENSHOT}-SIGNUP_1_INDIVIDUAL_002.png
User can input into [Last Name] field successful
    capture page screenshot  ${SCREENSHOT}-SIGNUP_1_INDIVIDUAL_003.png
User can input into [Email] field successful
    capture page screenshot  ${SCREENSHOT}-SIGNUP_1_INDIVIDUAL_004.png
User can input into [Password] field successful
    capture page screenshot  ${SCREENSHOT}-SIGNUP_1_INDIVIDUAL_006.png
##Warning message##
[SIGN UP] Warning message Email is invalid is displayed until User input valid value
    wait until page contains element    ${SIGNUP_INVALID_EMAIL_WARMING}
[SIGN UP] Warning message is displayed until User input more than 6 characters long "Password must be at least 6 character"
    wait until page contains element    ${SIGNUP_INDIVIDUAL_PASSWORD_AT_LEAST_6_CHAR}
    wait until page contains element    ${SIGNUP_INDIVIDUAL_CONFIRM_PASSWORD_AT_LEAST_6_CHAR}
[SIGN UP} Warning message is displayed until User input password and confirmation match "Password does not match"
    wait until page contains element    ${SIGNUP_INDIVIDUAL_PASSWORD_DOES_NOT_MATCH}
[SIGN UP} Warning message is displayed when user leaves blank any require fields
    wait until page contains element  ${SIGNUP_INDIVIDUAL_FIRSTNAME_BLANK}
    wait until page contains element  ${SIGNUP_INDIVIDUAL_LASTNAME_BLANK}
    wait until page contains element  ${SIGNUP_INDIVIDUAL_EMAIL_BLANK}
    wait until page contains element  ${SIGNUP_INDIVIDUAL_PASSWORD_BLANK}
    wait until page contains element  ${SIGNUP_INDIVIDUAL_CONFIRM_PASSWORD_BLANK}
[SIGN UP} Warning message is displayed "Account already existed"
    wait until page contains element  ${SIGNUP_ACCOUNT_ALREADY_EXISTED_WARMING}