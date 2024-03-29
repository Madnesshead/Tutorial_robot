*** Settings ***
Documentation  Simple test cases for checking the main page of web site
Resource  ../../Resources/FrontOffice/FrontOfficeKey.robot
Resource  ../../Resources/Common/CommonWeb.robot
Test Setup  Start Web Test
Test Teardown  End Web Test

#robot -d results tests/FrontOffice/Front_Office.robot

*** Variables ***
${BROWSER} =  chrome
${FRONT_OFFICE_URL} =  http://www.robotframeworktutorial.com/front-office/

*** Test Cases ***
User can open the main page
    [Documentation]  User can open the main page
    [Tags]  Smoke
    FrontOfficeKey.Go to Landing Page

User can open the "Team" page
    [Documentation]  User can open the main page
    [Tags]  Smoke
    FrontOfficeKey.Go to Landing Page
    FrontOfficeKey.Go to Team Page

"Team" page should match requirements
    [Documentation]  User can open the main page
    [Tags]  Smoke
    FrontOfficeKey.Go to Landing Page
    FrontOfficeKey.Go to Team Page
    FrontOfficeKey.Validate Team Page


