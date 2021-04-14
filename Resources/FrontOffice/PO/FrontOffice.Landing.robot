*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${FRONT_LANDING_NAVIGATION_ELEMENT} =  id=mainNav

*** Keywords ***
Navigate To Page
    Go to  ${FRONT_OFFICE_URL}

Verify Page Loaded
    Wait Until Page Contains Element  ${FRONT_LANDING_NAVIGATION_ELEMENT}
