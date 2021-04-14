*** Settings ***
Documentation  Simple end-to-end tests
Resource  ../../Resources/FrontOffice/FrontOfficeKey.robot
Resource  ../../Resources/BackOffice/BackOfficeKey.robot
Resource  ../../Resources/Common/CommonWeb.robot
Test Setup  Start Web Test
Test Teardown  End Web Test

#robot -d results tests/EndToEnd/End_to_End.robot

*** Variables ***
${BROWSER} =  chrome
${MAIN_URL} =  http://www.robotframeworktutorial.com/front-office/
${MAIN_URL} =  http://www.robotframeworktutorial.com/back-office/

*** Test Cases ***
User can open both sites
    [Documentation]  User can open the main page
    [Tags]  Smoke
    FrontOfficeKey.Go to Landing Page
    BackOfficeKey.Go to Landing Page
