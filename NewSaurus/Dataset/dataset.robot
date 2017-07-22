*** Settings ***
Documentation  Data Set file
Resource  resource.robot
Library  String
*** Variables ***
#Sign In
#screenshot
${SCREENSHOT}   screenshot
#Email
${NOT_PROJECT_EMAIL}    vdupham@gmail.com
${VALID_EMAIL}  dupham@goappable.com
${INVALID_EMAIL}  dupham goappable.com
${EXPIRED_ACCOUNT_EMAIL}    surveysaurus_expiredAccount@yopmail.com
#Password
${NOT_PROJECT_PASSWORD}     23081991
${VALID_PASSWORD}   23081991
${INVALID_PASSWORD}     invalidpassword
${EXPIRED_ACCOUNT_PASSWORD}     123456789
${PASSWORD_LESS_THAN_6_CHAR}    12345

#Sign Up Individual
${INDIVIDUAL_FIRSTNAME}     DU
${INDIVIDUAL_LASTNAME}      PHAM
${INDIVIDUAL_EMAIL}         dupham@goappable.com
${INDIVIDUAL_PASSWORD}      23081991
${INDIVIDUAL_CONFIRM_PASSWORD}  23081991
##Existed Account
${INDIVIDUAL_FIRSTNAME_EXISTED}     DU
${INDIVIDUAL_LASTNAME_EXISTED}      PHAM
${INDIVIDUAL_EMAIL_EXISTED}         dupham@goappable.com
${INDIVIDUAL_PASSWORD_EXISTED}      23081991
${INDIVIDUAL_CONFIRM_PASSWORD_EXISTED}  23081991
