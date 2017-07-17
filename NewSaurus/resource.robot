*** Settings ***
Documentation     A resource file with reusable keywords and variables.
...
...               The system specific keywords created here form our own
...               domain specific language. They utilize keywords provided
...               by the imported Selenium2Library.
Library           Selenium2Library

*** Variables ***
${SERVER_DEV}   http://dev-swf.goappable.com
${SERVER_STAGING}   http://staging-swf.goappable.com
#Environment Testing Setup
${SERVER}   ${SERVER_STAGING}
${BROWSER}  chrome
${DELAY}    1
#Sign In Element
${SIGN_IN_MENU}  xpath=/html/body/header/div/div/div/div/div[2]/div/ul/li[2]/a
${SIGN_IN_BUTTON}   xpath=/html/body/section/section/div/form/div[3]/button
#screenshot
${SCREENSHOT}   screenshot
#
${VALID_EMAIL}  dupham@goappable.com
${VALID_PASSWORD}   23081991
${EMAIL_TEXTFIELD}  XPATH=/html/body/section/section/div/form/div[1]/input
${PASSWORD_TEXTFIELD}   XPATH=/html/body/section/section/div/form/div[2]/input

*** Keywords ***
Enter [Main] screen URL to Browser
    open browser    ${SERVER}   ${BROWSER}
    maximize browser window
    set selenium speed  ${DELAY}
    main screen screen should be open
Main Screen Screen Should Be Open
    wait until page contains  Sign In
    capture page screenshot  filename=${SCREENSHOT}-MAIN_SCREEN.png
Go to [Sign In] screen
    click element  ${SIGN_IN_MENU}
    capture page screenshot  filename=${SCREENSHOT}-SIGN_IN_SCREEN.png
Input valid Email and Password
    input text  ${EMAIL_TEXTFIELD}  ${VALID_EMAIL}
    INPUT TEXT  ${PASSWORD_TEXTFIELD}   ${VALID_PASSWORD}
Click on [Sign In] button
    click element   ${SIGN_IN_BUTTON}
    set selenium speed  ${DELAY}
    User can sign in successfully and redirect to [Home] screen
User can sign in successfully and redirect to [Home] screen
    wait until page contains  Draft
    capture page screenshot  filename=${SCREENSHOT}-HOME_SCREEN.png