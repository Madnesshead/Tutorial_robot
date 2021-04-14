*** Settings ***
Resource  ./PO/Landing.robot
Resource  ./PO/TopNav.robot

*** Variables ***


*** Keywords ***
Go to Landing Page
    Landing.Navigate To Page
    Landing.Verify Page Loaded
