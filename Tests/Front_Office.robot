*** Settings ***
Documentation  Simple test cases for checking the main page of web site
Resource  ../Resources/FrontOfficeKey.robot
Resource  ../Resources/CommonWeb.robot
Test Setup  Start Web Test
Test Teardown  End Web Test

#robot -d results tests/Front_Office.robot

*** Variables ***
${BROWSER} =  chrome
${MAIN_URL} =  http://www.robotframeworktutorial.com/front-office/

*** Test Cases ***
User can open the main page
    [Documentation]  User can open the main page
    [Tags]  Smoke
    Go To  ${MAIN_URL}
    Log  User can see the main page
    Sleep  2s

User can see the main page
    [Documentation]  User can open the main page
    [Tags]  Smoke
    Go To  ${MAIN_URL}
    Log  User can see the main page again
    Sleep  2s
