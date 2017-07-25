*** Settings ***
Documentation     SIGN IN Testcase.
...
...               This test has a workflow that is created using keywords in
...               the imported resource file.
Resource          resource.robot

*** Test Cases ***
SIGN_IN_3_001
     [Documentation]  Check GUI of [Sign In] screen
     #Pre-Condition
     Enter [Main] screen URL to Browser
     Main Screen Should Be Open
     Go to [Sign In] screen
     #Step
     Observe and check GUI of [Sign In] screen
     #Expected

     #finish and close browser
     #capture page screenshot  ${SCREENSHOT}-SIGNIN_3_001.png
     close browser
SIGN_IN_3_002
     [Documentation]  User can input into [Email] field
     #Pre-Condition
     Enter [Main] screen URL to Browser
     Main Screen Should Be Open
     Go to [Sign In] screen
     #Step
     Input valid Email
     #Expected
     #capture page screenshot  ${SCREENSHOT}-SIGNIN_3_002.png
     #page should contain    ${VALID_EMAIL}
     #finish and close browser
     close browser
SIGN_IN_3_003
     [Documentation]  Check format of Email, Warning message is displayed until User input valid value "Email is invalid"
     #Pre-Condition
     Enter [Main] screen URL to Browser
     Main Screen Should Be Open
     Go to [Sign In] screen
     #Step
     Input invalid format of email
     click on [sign in] button
     #Expected
     [SIGN IN] Warning message Email is invalid is displayed until User input valid value
     #finish and close browser
     #capture page screenshot  ${SCREENSHOT}-SIGNIN_3_003.png
     close browser
SIGN_IN_3_004
     [Documentation]  User can input into [Password] field and password is encrypted form when entered
     #Pre-Condition
     Enter [Main] screen URL to Browser
     Main Screen Should Be Open
     Go to [Sign In] screen
     #Step
     Input valid Password
     #Expected
     #finish and close browser
     #capture page screenshot  ${SCREENSHOT}-SIGNIN_3_004.png
     close browser
SIGN_IN_3_005
     [Documentation]  Check User can not login and warning message is displayed if Email and Password do not match
     #Pre-Condition
     Enter [Main] screen URL to Browser
     Main Screen Should Be Open
     Go to [Sign In] screen
     #Step
     Input valid email
     Input invalid Password
     click on [sign in] button
     #Expected
     Warning message Invalid email or password is displayed notify that Email and Password do not match
     #finish and close browser
     #capture page screenshot  ${SCREENSHOT}-SIGNIN_3_005.png
     close browser
SIGN_IN_3_006
     [Documentation]  Check warning message is displayed if User leave blank any required fields
     #Pre-Condition
     Enter [Main] screen URL to Browser
     Main Screen Should Be Open
     Go to [Sign In] screen
     #Step
     click on [sign in] button
     #Expected
     warning message is displayed "please enter your email"
     warning message is displayed "please enter your password"
     #finish and close browser
     #capture page screenshot  ${SCREENSHOT}-SIGNIN_3_006.png
     close browser
SIGN_IN_3_007
     [Documentation]  User can Sign In successful when click on [Sign In] button if input valid Email and Password
     #Pre-Condition
     Enter [Main] screen URL to Browser
     Main Screen Should Be Open
     Go to [Sign In] screen
     #Step
     Input valid Email
     Input valid Password
     Click on [Sign In] button
     #Expected
     User can sign in successfully and redirect to [Home] screen
     #finish and close browser
     #capture page screenshot  ${SCREENSHOT}-SIGNIN_3_007.png
     close browser
SIGN_IN_3_008
     [Documentation]  User cannot Sign In with account has expired
     #Pre-Condition
     Enter [Main] screen URL to Browser
     Main Screen Should Be Open
     Go to [Sign In] screen
     #Step
     input email of account has expired
     input password of account has expired
     click on [sign in] button
     #Expected
     Warning message is display "Inactive account"
     #finish and close browser
     #capture page screenshot  ${SCREENSHOT}-SIGNIN_3_008.png
     close browser