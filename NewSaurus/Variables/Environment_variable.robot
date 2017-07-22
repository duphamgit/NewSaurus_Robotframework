*** Settings ***
Documentation   Environment Variable

*** Variables ***
${SERVER_DEV}   http://dev-swf.goappable.com
${SERVER_STAGING}   http://staging-swf.goappable.com
#Environment Testing Setup
${SERVER}   ${SERVER_DEV}
${BROWSER}  chrome
${DELAY}    1