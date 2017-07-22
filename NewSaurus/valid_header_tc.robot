*** Settings ***
Documentation  Testcase for Project - Header
Resource  resource.robot

*** Test Cases ***
HEADER_9_001
    [Documentation]  Check GUI of  [Header] menu
    #Pre Condition
    [HEADER] User has logged in
    [HEADER] Click on [Project] link
    #Step
    [HEADER] Observe and check GUI of [Header] menu
    #Expected
    [HEADER] menu is display as mockup expected
    #finish and close browser
    capture page screenshot  ${screenshot}-HEADER_9_001.png
    close browser
HEADER_9_002
    [Documentation]    Check User can click on  [Project] link.
    #Pre Condition
    [HEADER] User has logged in
    [HEADER] Click on [Project] link
    #Step
    [HEADER] Click on [Project] link
    #Expected
    #finish and close browser
    capture page screenshot  ${screenshot}-HEADER_9_002.png
    close browser
HEADER_9_004
    [Documentation]  Check User can click on  [Setting] link.
    #Pre Condition
    [HEADER] User has logged in
    [HEADER] Click on [Project] link
    #Step
    [HEADER] Click on [Setting] link
    #Expected
    [HEADER] redirect to [Setting] screen
    #finish and close browser
    capture page screenshot  ${screenshot}-HEADER_9_004.png
    close browser
HEADER_9_006
    [Documentation]  Check User can click on  [Welcome] link.
    #Pre Condition
    [HEADER] User has logged in
    [HEADER] Click on [Project] link
    #Step
    [HEADER] Click on [Welcome User] link
    #Expected
    [HEADER] Display [Log out] button
    #finish and close browser
    capture page screenshot  ${screenshot}-HEADER_9_006.png
    close browser
