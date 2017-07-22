*** Settings ***
Documentation  Variable for No recent project
Resource  resource.robot

*** Keywords ***
#Precondition
[NO_RECENT_PROJECT] User logged in on first time
    [Documentation]  User logged in on first time, no Project yet
     #Pre-Condition
     Enter [Main] screen URL to Browser
     Main Screen Should Be Open
     Go to [Sign In] screen
     #Step
     [No_RECENT_PROJECT] Input not project Email
     [No_RECENT_PROJECT] Input not project Password
     Click on [Sign In] button
     #Expected
     User can sign in successfully and redirect to [Home] screen
     #finish and close browser
     capture page screenshot  ${SCREENSHOT}-SIGNIN_3_007.png
     close browser
#Step
[NO_RECENT_PROJECT] Observe and check GUI of [No recent list] screen
    wait until page contains element  ${NO_RECENT_PROJECT_NEW_PROJECT_BUTTON}
    wait until page contains element  ${NO_RECENT_PROJECT_HEADER}
[No_RECENT_PROJECT] Click on [New Project] button
    click button  ${NO_RECENT_PROJECT_NEW_PROJECT_BUTTON}
[No_RECENT_PROJECT] Create some projects
[No_RECENT_PROJECT] Delete all projects contain
[No_RECENT_PROJECT] Input not project Email
    input text  ${EMAIL_TEXTFIELD}  ${NOT_PROJECT_EMAIL}
[No_RECENT_PROJECT] Input not project Password
    input text  ${PASSWORD_TEXTFIELD}   ${NOT_PROJECT_PASSWORD}
#Expected
[NO_RECENT_PROJECT] Screen is display as mockup expected
    wait until page contains element  ${NO_RECENT_PROJECT_NEW_PROJECT_BUTTON}
    wait until page contains element  ${NO_RECENT_PROJECT_HEADER}
[NO_RECENT_PROJECT] Redirect to [Add New Project] screen
    wait until page contains    Back
#Warming
