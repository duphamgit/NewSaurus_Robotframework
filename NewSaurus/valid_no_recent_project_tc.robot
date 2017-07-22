*** Settings ***
Documentation  Testcase for No Recent Project
Resource  resource.robot

*** Test Cases ***
NO_RECENT_PROJECT_10_001
    [Documentation]  Check GUI of  [No recent project] list.
    #Precondition
    [NO_RECENT_PROJECT] User logged in on first time
    [HEADER] Click on [Project] link
    #Step
    [NO_RECENT_PROJECT] Observe and check GUI of [No recent list] screen
    #Expected
    [NO_RECENT_PROJECT] Screen is display as mockup expected

NO_RECENT_PROJECT_10_002
    [Documentation]  Check User can click on [New Project] button.
    #Precondition
    [NO_RECENT_PROJECT] User logged in on first time
    [HEADER] Click on [Project] link
    #Step
    [No_RECENT_PROJECT] Click on [New Project] button
    #Expected
    [NO_RECENT_PROJECT] Redirect to [Add New Project] screen
NO_RECENT_PROJECT_10_003
    [Documentation]  Check GUI of  [No recent project] list if User delete all projects.
    #Precondition
    [HEADER] User has logged in
    [HEADER] Click on [Project] link
    #Step
    [No_RECENT_PROJECT] Create some projects
    [No_RECENT_PROJECT] Delete all projects contain
    #Expected
    [NO_RECENT_PROJECT] Screen is display as mockup expected
