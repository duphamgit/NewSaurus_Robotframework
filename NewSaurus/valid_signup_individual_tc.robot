*** Settings ***
Documentation     SIGN UP Testcase.
...
...               This test has a workflow that is created using keywords in
...               the imported resource file.
Resource          resource.robot

*** Test Cases ***
SIGN_UP_1_INDIVIDUAL_001
     [Documentation]  Check GUI of Sign Up for [Individual] screen
     #Pre-Condition
     Enter [Main] screen URL to Browser
     main screen should be open
     Go to [Create an account] screen
     Select [Individual] tab
     #Step
     Observe and check GUI of Sign Up for [Individual] screen
     #Expected

     #finish and close browser
     capture page screenshot  ${SCREENSHOT}-SIGNUP_1_INDIVIDUAL_001.png
     close browser
SIGN_UP_1_INDIVIDUAL_002
     [Documentation]  User can input into [First Name] field
     #Pre-Condition
     Enter [Main] screen URL to Browser
     main screen should be open
     Go to [Create an account] screen
     Select [Individual] tab
     #Step
     INPUT INTO [FIRST NAME]
     #Expected
     User can input into [First Name] field successful
     #finish and close browser
     capture page screenshot  ${SCREENSHOT}-SIGNUP_1_INDIVIDUAL_002.png
     close browser
SIGN_UP_1_INDIVIDUAL_003
     [Documentation]  User can input into [Last Name] field
     #Pre-Condition
     Enter [Main] screen URL to Browser
     main screen should be open
     Go to [Create an account] screen
     Select [Individual] tab
     #Step
     INPUT INTO [LAST NAME]
     #Expected
     User can input into [Last Name] field successful
     #finish and close browser
     capture page screenshot  ${SCREENSHOT}-SIGNUP_1_INDIVIDUAL_003.png
     close browser
SIGN_UP_1_INDIVIDUAL_004
     [Documentation]  User can input into [Email] field
     #Pre-Condition
     Enter [Main] screen URL to Browser
     main screen should be open
     Go to [Create an account] screen
     Select [Individual] tab
     #Step
     INPUT INTO [EMAIL]
     #Expected
     User can input into [Email] field successful
     #finish and close browser
     capture page screenshot  ${SCREENSHOT}-SIGNUP_1_INDIVIDUAL_004.png
     close browser
SIGN_UP_1_INDIVIDUAL_005
     [Documentation]  Check format of Email, Warning message is displayed until User input valid value "Email is invalid"
     #Pre-Condition
     Enter [Main] screen URL to Browser
     main screen should be open
     Go to [Create an account] screen
     Select [Individual] tab
     #Step
     [SIGN UP] Input invalid format of email
     Click on individual [CREATE ACCOUNT] button
     #Expected
     [SIGN UP] Warning message Email is invalid is displayed until User input valid value
     #finish and close browser
     capture page screenshot  ${SCREENSHOT}-SIGNUP_1_INDIVIDUAL_005.png
     close browser
SIGN_UP_1_INDIVIDUAL_006
     [Documentation]  User can input into [Password] field and password is encrypted form when entered
     #Pre-Condition
     Enter [Main] screen URL to Browser
     main screen should be open
     Go to [Create an account] screen
     Select [Individual] tab
     #Step
     [SIGN UP] Input valid Password
     #Expected
     user can input into [password] field successful
     #finish and close browser
     capture page screenshot  ${SCREENSHOT}-SIGNUP_1_INDIVIDUAL_006.png
     close browser
SIGN_UP_1_INDIVIDUAL_007
     [Documentation]  Password and Confirm Password have to be at least 6 characters long
     #Pre-Condition
     Enter [Main] screen URL to Browser
     main screen should be open
     Go to [Create an account] screen
     Select [Individual] tab
     #Step
     [SIGN UP] Input value for [Password] field less than 6 characters long
     [SIGN UP] Input value for [Confirm Password] field less than 6 characters long
     Click on individual [CREATE ACCOUNT] button
     #Expected
     [SIGN UP] Warning message is displayed until User input more than 6 characters long "Password must be at least 6 character"
     #finish and close browser
     capture page screenshot  ${SCREENSHOT}-SIGNUP_1_INDIVIDUAL_007.png
     close browser
SIGN_UP_1_INDIVIDUAL_008
     [Documentation]  Check warning message is displayed if password and confirmation do not match
     #Pre-Condition
     Enter [Main] screen URL to Browser
     main screen should be open
     Go to [Create an account] screen
     Select [Individual] tab
     #Step
     [sign up] input password and confirmation do not match
     Click on individual [CREATE ACCOUNT] button
     #Expected
     [sign up} warning message is displayed until user input password and confirmation match "password does not match"
     #finish and close browser
     capture page screenshot  ${SCREENSHOT}-SIGNUP_1_INDIVIDUAL_008.png
     close browser
SIGN_UP_1_INDIVIDUAL_009
     [Documentation]  Check warning message is displayed if User leaves blank any required fields
     #Pre-Condition
     Enter [Main] screen URL to Browser
     main screen should be open
     Go to [Create an account] screen
     Select [Individual] tab
     #Step
     [SIGN UP] Leave blank any required fields
     Click on individual [CREATE ACCOUNT] button
     #Expected
     [SIGN UP} Warning message is displayed when user leaves blank any require fields
     #finish and close browser
     capture page screenshot  ${SCREENSHOT}-SIGNUP_1_INDIVIDUAL_009.png
     close browser
SIGN_UP_1_INDIVIDUAL_010
     [Documentation]  User can check into "I agree to Survey Saurus Terms of Use and Policy"
     #Pre-Condition
     Enter [Main] screen URL to Browser
     main screen should be open
     Go to [Create an account] screen
     Select [Individual] tab
     #Step
     [SIGN UP] Check into "I agree to Survey Saurus Terms of Use and Policy" checkbox
     #Expected
     [SIGN UP] Checkbox is unchecked
     #finish and close browser
     capture page screenshot  ${SCREENSHOT}-SIGNUP_1_INDIVIDUAL_010.png
     close browser
SIGN_UP_1_INDIVIDUAL_011
     [Documentation]  Check warning message is displayed if User input existed email
     #Pre-Condition
     Enter [Main] screen URL to Browser
     main screen should be open
     Go to [Create an account] screen
     Select [Individual] tab
     #Step
     [SIGN UP] Input valid value into other fields
     [SIGN UP] Input existed email into [Email] field
     Click on individual [CREATE ACCOUNT] button
     #Expected
     [SIGN UP} Warning message is displayed "Account already existed"
     #finish and close browser
     capture page screenshot  ${SCREENSHOT}-SIGNUP_1_INDIVIDUAL_011.png
     close browser
SIGN_UP_1_INDIVIDUAL_012
     [Documentation]  Check warning message is displayed if User input existed email
     #Pre-Condition
     Enter [Main] screen URL to Browser
     main screen should be open
     Go to [Create an account] screen
     Select [Individual] tab
     #Step
     [SIGN UP] Input valid value into other fields
     Click on individual [CREATE ACCOUNT] button
     #Expected
     [SIGN UP] show [Survey Saurus Notification] popup with content: "Thank you for registering.An email has been sent to email [Email Registry] Please check your email and active the account." Button: OK
     user can click on [ok] button to close notification popup
     redirect to [Home] screen
     #finish and close browser
     capture page screenshot  ${SCREENSHOT}-SIGNUP_1_INDIVIDUAL_012.png
     close browser
