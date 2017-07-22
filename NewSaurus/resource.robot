*** Settings ***
Documentation     A resource file with reusable keywords and variables.
...
...               The system specific keywords created here form our own
...               domain specific language. They utilize keywords provided
...               by the imported Selenium2Library.
Library           Selenium2Library
Library           String
####Variables####
Resource    Variables/Environment_variable.robot
Resource    Variables/Forgot_your_password_variable.robot
Resource    Variables/Header_variable.robot
Resource    Variables/List_of_projects_variable.robot
Resource    Variables/No_recent_project_variable.robot
Resource    Variables/Setting_variable.robot
Resource    Variables/SignIn_variable.robot
Resource    Variables/SignUp_variable.robot
Resource    Dataset/dataset.robot
####Keywords####
Resource    Keywords/SignIn_keyword.robot
Resource    Keywords/SignUp_keyword.robot
Resource    Keywords/Header_keyword.robot
Resource    Keywords/No_recent_project_keyword.robot
*** Variables ***
#Import from Settings
*** Keywords ***
#Import from Settings
