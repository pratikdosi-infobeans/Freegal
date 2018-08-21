*** Settings ***
Documentation  This is the test site for Login into the app
Resource      ../Resources/BasicApp.robot
Resource      ../Resources/Common.robot


Test Setup  launch and login in app
Test Teardown   Logout and close app

*** Test Cases ***

TC_01_Validate user is able to navigates on location screen
    [Documentation]    This test is to verfiy the navigation on calendar screen
    [Tags]  Smoke
    check the hamburger option available and tap
    Navigates to the Calendar section

TC_02_validate the error message on start date field
    [Documentation]    This test is to verfiy the error message on start date field
    [Tags]  Smoke
    check the hamburger option available and tap
    Navigates to the Calendar section
    Navigates to create schedule screen
    Tap on the Calendar save button
    Check error message on start date field

