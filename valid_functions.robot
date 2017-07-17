*** Settings ***
Documentation     A test suite with a single test for valid functions.
...
...               This test has a workflow that is created using keywords in
...               the imported resource file.
Resource          resource.robot

*** Test Cases ***
SIGN_IN_3_007
#Contenfor checking: User can Sign In successful when click on [Sign In] button if input valid Email and Password

    #Pre-Condition
    Enter [Main] screen URL to Browser
    Main Screen Screen Should Be Open
    Go to [Sign In] screen
    #Step
    Input valid Email and Password
    Click on [Sign In] button
    #Expected
    User can sign in successfully and redirect to [Home] screen