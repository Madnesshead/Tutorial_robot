*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${BACK_LANDING_NAVIGATION_ELEMENT} =  xpath=//a[@class='navbar-brand']

*** Keywords ***
Navigate To Page
    Go to  ${BACK_OFFICE_URL}

Verify Page Loaded
    Wait Until Page Contains Element  ${BACK_LANDING_NAVIGATION_ELEMENT}
