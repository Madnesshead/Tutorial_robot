*** Settings ***
Documentation  Simple test cases for checking the main page of web site
Library  Dialogs
Resource  ../Resourccleares/FrontOfficeKey.robot
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
    ${new_browser} =  Get Selection From User  Which browser?  chrome  ie  firefox
    Set Global Variable  ${BROWSER}  ${new_browser}
    FrontOfficeKey.Go to Landing Page

User can open the "Team" page
    [Documentation]  User can open the main page
    [Tags]  Smoke
    FrontOfficeKey.Go to Landing Page
    Execute Manual Step  Do something manually!  It failed!
    FrontOfficeKey.Go to Team Page
    Pause Execution

"Team" page should match requirements
    [Documentation]  User can open the main page
    [Tags]  Smoke
    FrontOfficeKey.Go to Landing Page
    FrontOfficeKey.Go to Team Page
    FrontOfficeKey.Validate Team Page
