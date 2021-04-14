*** Settings ***
Documentation  Simple test cases for checking the main page of web site
Resource  ../../Resources/BackOffice/BackOfficeKey.robot
Resource  ../../Resources/Common/CommonWeb.robot
Test Setup  Start Web Test
Test Teardown  End Web Test

#robot -d results tests/BackOffice/Back_Office.robot

*** Variables ***
${BROWSER} =  chrome
${MAIN_URL} =  http://www.robotframeworktutorial.com/back-office/

*** Test Cases ***
User can open the main page
    [Documentation]  User can open the main page
    [Tags]  Smoke
    BackOfficeKey.Go to Landing Page
