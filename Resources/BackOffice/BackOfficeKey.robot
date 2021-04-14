*** Settings ***
Resource  ./PO/BackOffice.Landing.robot
Resource  ./PO/BackOffice.TopNav.robot

*** Variables ***


*** Keywords ***
Go to Landing Page
    BackOffice.Landing.Navigate To Page
    BackOffice.Landing.Verify Page Loaded
