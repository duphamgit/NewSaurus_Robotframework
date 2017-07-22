*** Settings ***
Documentation  Keyword for HEADER - PROJECT
Resource  resource.robot

*** Keywords ***
#pre condition
[HEADER] User has logged in
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
     capture page screenshot  ${SCREENSHOT}-SIGNIN_3_007.png
[HEADER] Click on [Project] link
    click element  ${HEADER_PROJECT_LINK}
User has create projects
#Step
[HEADER] Observe and check GUI of [Header] menu
    wait until page contains element  ${HEADER_WELCOME_LINK}
[HEADER] Click on [Help] link
[HEADER] Click on [Setting] link
    click element  ${HEADER_SETTING_LINK}
[HEADER] Click on [Inbox] link
[HEADER] Click on [Welcome User] link
#Expected
[HEADER] menu is display as mockup expected
    wait until page contains element  ${HEADER_WELCOME_LINK}
[HEADER] redirect to [Project] screen
    wait until page contains    All Project
[HEADER] redirect to [Help] screen
[HEADER] redirect to [Setting] screen
    wait until page contains element  ${SETTING_INDIVIDUAL_CANCEL_BUTTON}
    wait until page contains element  ${SETTING_INDIVIDUAL_SAVE_BUTTON}
    wait until page contains element  ${SETTING_INDIVIDUAL_CHANGE_PASSWORD_BUTTON}
[HEADER] redirect to [inbox] screen
[HEADER] Display [Log out] button
    click element  ${HEADER_WELCOME_LINK}
    wait until page contains element  ${HEADER_LOGOUT_BUTTON}