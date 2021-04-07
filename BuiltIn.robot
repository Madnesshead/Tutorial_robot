*** Settings ***
Library  SeleniumLibrary
Documentation  Checking out the built-in library

*** Variables ***
${GLOBAL1} =  A global variable 1
${SOME_GLOBAL_DATA}

*** Test Cases ***
Declare and set variables
    ${some_test_data} =  Set Variable  Variable available only within this test

    Set Test Variable  ${more_test_data}  This is also only available within this test
    Set Suite Variable  ${some_suite_data}  Variable available within all tests in this suite
    Set Global Variable  ${SOME_GLOBAL_DATA}  Variable available everywhere

Logging stuff
    [Tags]  BuiltIn
    Comment  ${unset_variable}
    Comment  Just a random comment
    Comment  ${GLOBAL1}
    Log  I have something to say
    Log Many  I have something to say1  I have something to say2  I have something to say3
    Log to Console  This can only be seen in the console, not the log
    Log Variables  #this should log all the variables in scope
    Log  ${some_suite_data}
    Log  ${GLOBAL1}
    Log  ${SOME_GLOBAL_DATA}

Ignore failures in this test
    [Tags]  BuiltIn
    Open Browser  https://www.amazon.com

    #notice the log will contain a summary of errors which were encountered
    Run Keyword And Continue on Failure  Wait Until Page Contains  This text doesn't exist
    Run Keyword And Continue on Failure  Wait Until Page Contains  More test that doesn't exist
    Log  ${some_suite_data}
    Log  ${GLOBAL1}
    Log  ${SOME_GLOBAL_DATA}

    Close Browser

Repeat things
    Repeat Keyword  3 Times  Say Something Funny
    Log  ${some_suite_data}
    Log  ${GLOBAL1}
    Log  ${SOME_GLOBAL_DATA}

*** Keywords ***
Say Something Funny
     Log  These pretzels are making me thirsty