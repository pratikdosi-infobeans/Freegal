*** Settings ***
Documentation  This is the test site for Login into the app
Resource      ../Resources/BasicApp.robot
Resource      ../Resources/Common.robot


Test Setup  launch and login in app
Test Teardown   Logout and close app

*** Test Cases ***

#TC_01_Validate user can navigates to the My music tab
#    [Documentation]    This test is to validate user is able to navigates on music tab
#    [Tags]      smoke
#    navigates to the my music screen
#
#
#TC_02_Validate section available in my music tab for m68
#    [Documentation]    This test is to verify the available tabs in m68 library
#    [Tags]      smoke
#    navigates to the my music screen
#    verify the different tabsa vailable on mymusic screen
#
#
#TC_03_Validate user is able to navigates on Mymusic>playlist section
#    [Documentation]    This test is to verfiy that user is able to navigates oon playlist section on Mymusic tab
#    [Tags]      smoke
#    navigates to the my music screen
#    navigates to the Mymusci> playlist section
#
#TC_04_Validate streaming tab is by default selected and user is able to navigates on download tab
#    [Documentation]    This test is to verfiy that the default selected value, and navigates to switch on download tab
#    [Tags]      smoke
#    navigates to the my music screen
#    navigates to the Mymusci> playlist section
#    verify the streaming tab is by default selected
#    navigates to the download tab
#    verify that user lands on download tab
#
#TC_05_Validate the labels available on create new playlist popup and funtionality of cancel button
#    [Documentation]    This test is to verfiy the my music playlist section
#    [Tags]      smoke
#    navigates to the my music screen
#    navigates to the Mymusci> playlist section
#    tap on the create playlist button
#    tap on the my streaming playlist button
#    check the name and decription fields
#    check the placeholder text on Name field
#    check the place holder text on description field
#    tap on cancel button
#
#
#TC_06_Validate user is able to verify the error message of playlist name on a streaming playlist popup
#    [Documentation]    This test is to verfiy the my music playlist section
#    [Tags]      smoke
#    navigates to the my music screen
#    navigates to the Mymusci> playlist section
#    tap on the create playlist button
#    tap on the my streaming playlist button
#    tap on the create button
#    verify the error message
#    tap on cancel button
#
#TC_07_Validate user is able to create a streaming playlist
#    [Documentation]    This test is to validate the user created streaming playlist
#    [Tags]      smoke
#    navigates to the my music screen
#    navigates to the Mymusci> playlist section
#    tap on streaming playlist button
#    tap on the create playlist button
#    tap on the my streaming playlist button
#    name your playlist field
#    tap on the create button
#    tap on OK button
#
#TC_08_Validate the name of the last created playlist
#    [Documentation]    This test is to validate the user verify the name of the last created streaming playlist
#    [Tags]      smoke
#    navigates to the my music screen
#    navigates to the Mymusci> playlist section
#    check the name of the first streaming playlist
#
#TC_09_Validate user is able to verify the option available on more button of the streaming playlist
#    [Documentation]    This test is to validate user is able to navigates on more option screen and then verify the option available
#    [Tags]      smoke
#    navigates to the my music screen
#    navigates to the Mymusci> playlist section
#    Select more option of the first streaming playlist in list
#    Verify the options available for more option in streaming playlist
#    Cancel the popup screen of more streaming playlist option
#
#TC_10_Validate the funtionality of cancel button at rename playlist screen
#    [Documentation]    This test is to validate user is able to rename a streaming playlist name
#    [Tags]      smoke
#    navigates to the my music screen
#    navigates to the Mymusci> playlist section
#    Select more option of the first streaming playlist in list
#    tap on the "rename playlist" screen
#    tap on cancel button
#
#
#TC_11_Validate user is able to rename a streaming playlist and verify the rename playlist name
#    [Documentation]    This test is to validate user is able to rename a streaming playlist name
#    [Tags]      smoke
#    navigates to the my music screen
#    navigates to the Mymusci> playlist section
#    Select more option of the first streaming playlist in list
#    tap on the "rename playlist" screen
#    navigates and clear the existing name of playlist
#    name your playlist again
#    tap on confirm button
#    wait till popup appears
#    compare text with the new playlist name
#    tap on OK button
#
#TC_12_Validate the funtionality of cancel button at delete playlist screen
#    [Documentation]    This test is to validate user is able to check the funtionality of cancel button on delete playlist popup
#    [Tags]      smoke
#    navigates to the my music screen
#    navigates to the Mymusci> playlist section
#    Select more option of the first streaming playlist in list
#    tap on delete a playlist option
#    tap on cancel button
#
#
#
#TC_13_Validate user is able to delete the playlist
#    [Documentation]    This test is to validate the user is able to delete the playlist
#    [Tags]      smoke
#    navigates to the my music screen
#    navigates to the Mymusci> playlist section
#    Select more option of the first streaming playlist in list
#    tap on delete a playlist option
#    delete a streaming/download plalist
#    tap on ok button
#
#
#TC_14_Validate user is able to delete the full list of streaming playlist and verify the background text
#    [Documentation]    This test is to validate the user is able to delete all the playlist
#    [Tags]      smoke
#    navigates to the my music screen
#    navigates to the Mymusci> playlist section
#    delete the full
#    check background text when streaming list is empty


#-------------- Download playlist -----------------

#TC_15_Validate user is able to create a download playlist
#    [Documentation]    This test is to validate that the  user is able to create download playlist
#    [Tags]      smoke
#    navigates to the my music screen
#    navigates to the Mymusci> playlist section
#    tap on downloaded playlist button
#    tap on the create playlist button
#    tap on the my download playlist button
#    name your playlist field
#    enter description in field
#    count of entred text
#    tap on the create button
#    tap on OK button
#
#
#TC_16_Validate user is able to verify the error message of playlist name on a download playlist popup
#    [Documentation]    This test is to verfiy the error message of blank download playlist name
#    [Tags]      smoke
#    navigates to the my music screen
#    navigates to the Mymusci> playlist section
#    tap on the create playlist button
#    tap on the my download playlist button
#    tap on the create button
#    verify the error message
#    tap on cancel button
#
#TC_17_Validate user is able to verify the option available on more button of the download playlist
#    [Documentation]    This test is to validate user is able to navigates on more option screen and then verify the option available
#    [Tags]      smoke
#    navigates to the my music screen
#    navigates to the Mymusci> playlist section
#    tap on downloaded playlist button
#    Select more option of the first download playlist in list
#    Verify the options available for more option in download playlist
#    Cancel the popup screen of more streaming playlist option
#
#
#TC_18_Validate the funtionality of cancel button at delete download playlist screen
#    [Documentation]    This test is to validate user is able to check the funtionality of cancel button on delete playlist popup
#    [Tags]      smoke
#    navigates to the my music screen
#    navigates to the Mymusci> playlist section
#    tap on downloaded playlist button
#    Select more option of the first download playlist in list
#    tap on delete a playlist option
#    tap on cancel button
#
#
#TC_19_Validate user is able to delete the downlaoded playlist
#    [Documentation]    This test is to validate the user is able to delete the playlist
#    [Tags]      smoke
#    navigates to the my music screen
#    navigates to the Mymusci> playlist section
#    tap on downloaded playlist button
#    Select more option of the first download playlist in list
#    tap on delete a playlist option
#    delete a streaming/download plalist
#    tap on ok button


#TC_20_Validate user is able to delete the full list of downloaded playlist and verify the background text
#    [Documentation]    This test is to validate the user is able to delete all the playlist
#    [Tags]      smoke
#    navigates to the my music screen
#    navigates to the Mymusci> playlist section
#    tap on downloaded playlist button
#    delete the full
#    check background text when downloaded list is empty


TC_21_Validate the help screen of Playlist section
    [Documentation]    This test is to validate the user is able to delete all the playlist
    [Tags]      smoke
    navigates to the my music screen
    navigates to the Mymusci> playlist section
    tap on the help screen
    verify the text available on help screen of playlist
    tap on got it button


