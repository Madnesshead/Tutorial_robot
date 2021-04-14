*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${LANDING_NAVIGATION_ELEMENT} =  xpath=//a[@class='navbar-brand']

*** Keywords ***
Navigate To Page
    Go to  ${MAIN_URL}

Verify Page Loaded
    Wait Until Page Contains Element  ${LANDING_NAVIGATION_ELEMENT}
