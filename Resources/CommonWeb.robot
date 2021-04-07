*** Settings ***
Library  SeleniumLibrary

*** Variables ***


*** Keywords ***
Start Web Test
    Open Browser  about:blank  ${BROWSER}
    Maximize Browser Window

End Web Test
    Close All Browsers