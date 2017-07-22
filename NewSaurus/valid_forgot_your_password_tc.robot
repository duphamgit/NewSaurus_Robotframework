*** Settings ***
Documentation  Testcase for Forgot Your Password
Resource  resource.robot

*** Test Cases ***
FORGOT_YOUR_PASSWORD_4_001
    [Documentation]   Check GUI of Forgot your password screen
    #Precodition
    [FORGOT_YOUR_PASSWORD] Enter [Main] screen URL to Browser.
    [FORGOT_YOUR_PASSWORD] Go to [Sign In] Screen.
    [FORGOT_YOUR_PASSWORD] Click [Forgot Password] button
    #Step
    [FORGOT_YOUR_PASSWORD] Observe and check GUI of [Forgot your password] screen
    #Expected
    [FORGOT_YOUR_PASSWORD] Refer [Mockup] sheet: [Forgot your password] picture"

FORGOT_YOUR_PASSWORD_4_002
    [Documentation]   User can input into [Email] field
    #Precodition
    [FORGOT_YOUR_PASSWORD] Enter [Main] screen URL to Browser.
    [FORGOT_YOUR_PASSWORD] Go to [Sign In] Screen.
    [FORGOT_YOUR_PASSWORD] Click [Forgot Password] button
    #Step
    [FORGOT_YOUR_PASSWORD] Input into [Email] field as below
    [FORGOT_YOUR_PASSWORD] Copy data and paste into Email
    #Expected
    [FORGOT_YOUR_PASSWORD] User can input into [Email] field successful
    [FORGOT_YOUR_PASSWORD] Allow to copy data and paste into Email with correct data"

FORGOT_YOUR_PASSWORD_4_003
    [Documentation]   Check format of Email
    #Precodition
    [FORGOT_YOUR_PASSWORD] Enter [Main] screen URL to Browser.
    [FORGOT_YOUR_PASSWORD] Go to [Sign In] Screen.
    [FORGOT_YOUR_PASSWORD] Click [Forgot Password] button
    #Step
    [FORGOT_YOUR_PASSWORD] Input invalid format of email
    #Expected
    [FORGOT_YOUR_PASSWORD] Warning message is displayed until User input valid value "Email is invalid"
    [FORGOT_YOUR_PASSWORD] Warning message is not displayed"

FORGOT_YOUR_PASSWORD_4_004
    [Documentation]   Check length of [Email] field
    #Precodition
    [FORGOT_YOUR_PASSWORD] Enter [Main] screen URL to Browser.
    [FORGOT_YOUR_PASSWORD] Go to [Sign In] Screen.
    [FORGOT_YOUR_PASSWORD] Click [Forgot Password] button
    #Step
    [FORGOT_YOUR_PASSWORD] Input into [Email] field as bellow:
    - Less than or equal 256 characters
    - More than 256 characters
    [FORGOT_YOUR_PASSWORD] Copy long string (more than 256 characters) and paste into Email
    #Expected
    [FORGOT_YOUR_PASSWORD]/ Prevent User input more than 256 characters.
    [FORGOT_YOUR_PASSWORD]/ Only 256 first characters is accepted"

FORGOT_YOUR_PASSWORD_4_005
    [Documentation]   Check warning message is displayed if input email does not match in DB
    #Precodition
    [FORGOT_YOUR_PASSWORD] Enter [Main] screen URL to Browser.
    [FORGOT_YOUR_PASSWORD] Go to [Sign In] Screen.
    [FORGOT_YOUR_PASSWORD] Click [Forgot Password] button
    #Step
    [FORGOT_YOUR_PASSWORD] Input an email does not match in DB
    [FORGOT_YOUR_PASSWORD] Click on [Forgot Password] button
    #Expected
    [FORGOT_YOUR_PASSWORD]/ Warning message notify that User input email does not match in DB is displayed "No account with that UserId exists."

FORGOT_YOUR_PASSWORD_4_006
    [Documentation]   Check warning message is displayed if User leave blank [Email] field
    #Precodition
    [FORGOT_YOUR_PASSWORD] Enter [Main] screen URL to Browser.
    [FORGOT_YOUR_PASSWORD] Go to [Sign In] Screen.
    [FORGOT_YOUR_PASSWORD] Click [Forgot Password] button
    #Step
    [FORGOT_YOUR_PASSWORD] Leave blank [Email] field and click on [Submit] button
    #Expected
    [FORGOT_YOUR_PASSWORD]/ Warning message is displayed: "Please enter your email"

FORGOT_YOUR_PASSWORD_4_007
    [Documentation]   Check User can click on [Submit] button and an email is sent to inputted email
    #Precodition
    [FORGOT_YOUR_PASSWORD] Enter [Main] screen URL to Browser.
    [FORGOT_YOUR_PASSWORD] Go to [Sign In] Screen.
    [FORGOT_YOUR_PASSWORD] Click [Forgot Password] button
    #Step
    [FORGOT_YOUR_PASSWORD] Input an email is existed in DB
    [FORGOT_YOUR_PASSWORD] Click on [Submit] button
    #Expected
    [FORGOT_YOUR_PASSWORD] Show popup with content "A link has been sent to your email, please check and follow the instruction to reset your password"
    Button: [Close]
    User can click on [Close] button to close notification popup
    Redirect to [Home] screen
    An email is sent to inputted email with link. Click on this link to redirect to [Change password] screen"

FORGOT_YOUR_PASSWORD_4_008
    [Documentation]   User can input into [Password] field and password is encrypted form when entered in [Change password] screen
    #Precodition
    [FORGOT_YOUR_PASSWORD] [Change password] screen is opening
    #Step
    [FORGOT_YOUR_PASSWORD] Input into [Password] field as below:
    [FORGOT_YOUR_PASSWORD] Try to copy password and paste in other fields
    #Expected
    [FORGOT_YOUR_PASSWORD] User can input into [Password] field successful and password is encrypted form when entered or pasted

FORGOT_YOUR_PASSWORD_4_009
    [Documentation]   Password have to be at least 6 characters long
    #Precodition
    [FORGOT_YOUR_PASSWORD] [Change password] screen is opening
    #Step
    [FORGOT_YOUR_PASSWORD] Input value for [Password] field less than 6 characters long
    #Expected
    [FORGOT_YOUR_PASSWORD] Warning message is displayed until User input more than 6 characters long
    "Password must be at least 6 character"

FORGOT_YOUR_PASSWORD_4_010
    [Documentation]   Check warning message is displayed if password and confirmation do not match
    #Precodition
    [FORGOT_YOUR_PASSWORD] [Change password] screen is opening
    #Step
    [FORGOT_YOUR_PASSWORD] Input password and confirmation do not match
    #Expected
    [FORGOT_YOUR_PASSWORD]/ Warning message is displayed until User input password and confirmation match
    "Password does not match"

FORGOT_YOUR_PASSWORD_4_011
    [Documentation]   Check warning message is displayed if User leave blank any fields
    #Precodition
    [FORGOT_YOUR_PASSWORD] [Change password] screen is opening
    #Step
    [FORGOT_YOUR_PASSWORD] Leave blank any fields and click on [Submit] button
    #Expected
    [FORGOT_YOUR_PASSWORD] Warning message is displayed:
    New Password: "Please enter your new password"
    Confirm New Password: "Please enter your new confirm password"

FORGOT_YOUR_PASSWORD_4_012
    [Documentation]   Check that valid password is saved successfully
    #Precodition
    [FORGOT_YOUR_PASSWORD] [Change password] screen is opening
    #Step
    [FORGOT_YOUR_PASSWORD] Input valid value for [Password] field
    [FORGOT_YOUR_PASSWORD] Click on [Save] button
    #Expected
    [FORGOT_YOUR_PASSWORD] Show popup with content "Password has been reset successfully.Please sign in again."
    Button: [Close]
    User can click on [Close] button to close notification popup and redirect to [Sign In] screen
    New Password is saved successfully.
    An email is sent to inputted email notify that password has been changed"

FORGOT_YOUR_PASSWORD_4_013
    [Documentation]   Check that User cannot login with old password
    #Precodition
    [FORGOT_YOUR_PASSWORD] Enter [Main] screen URL to Browser.
    [FORGOT_YOUR_PASSWORD] Go to [Sign In] Screen.
    [FORGOT_YOUR_PASSWORD] Get new Password
    #Step
    [FORGOT_YOUR_PASSWORD] Input Email and old Password
    [FORGOT_YOUR_PASSWORD] Click on [Sign In] button
    #Expected
    [FORGOT_YOUR_PASSWORD] Warning message is displayed and login unsuccessful. Stays on [Sign In] screen

FORGOT_YOUR_PASSWORD_4_010
    [Documentation]   Check that User can login successful with new password
    #Precodition
    [FORGOT_YOUR_PASSWORD] Enter [Main] screen URL to Browser.
    [FORGOT_YOUR_PASSWORD] Go to [Sign In] Screen.
    [FORGOT_YOUR_PASSWORD] Get new Password
    #Step
    [FORGOT_YOUR_PASSWORD] Input email and new password
    [FORGOT_YOUR_PASSWORD] Click on [Sign In] button
    #Expected
    [FORGOT_YOUR_PASSWORD] User can sign in successfully and redirect to [Home] screen