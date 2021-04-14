*** Settings ***
Resource  ./PO/FrontOffice.Landing.robot
Resource  ./PO/FrontOffice.Team.robot
Resource  ./PO/FrontOffice.TopNav.robot

*** Variables ***


*** Keywords ***
Go to Landing Page
    FrontOffice.Landing.Navigate To Page
    FrontOffice.Landing.Verify Page Loaded

Go to Team Page
    FrontOffice.TopNav.Select Team Page
    FrontOffice.Team.Verify Page Loaded

Validate Team Page
    FrontOffice.Team.Validate Page Contents
