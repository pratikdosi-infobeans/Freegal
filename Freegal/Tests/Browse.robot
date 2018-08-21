*** Settings ***
Documentation  This is the test site for Login into the app
Resource      ../Resources/BasicApp.robot
Resource      ../Resources/Common.robot


Test Setup  launch and login in app
Test Teardown   Logout and close app

*** Test Cases ***

#--- Browse> Trending> Top Albums Testcase> Top Albums ---#

#TC_01_Browse Trending>Top albums:Validate user is able to navigate on the browse section
#    [Documentation]    This test is to verify that the user is able to navigates on browse section
#    [Tags]
#    validate user is on Browse tab


#TC_02_Browse Trending>Top albums:Validate user is able to navigate on the list of top album and list displayed
#    [Documentation]    This test is to verfiy that user navigates to the details screen of all albums
#    [Tags]
#    validate user is on Browse tab
#    navigates to the detail screen of top album list
#    check the top album list displayed
#    navigates to the back screen
#
#TC_03_Browse Trending>Top albums:Validate user is able to navigate to the album list and album details screen
#    [Documentation]    This test is to verfiy the section available
#    [Tags]
#    validate user is on Browse tab
#    navigates to the detail screen of top album list
#    navigates to the detail screen of any album
#    navigates to the back screen
#    navigates to the back screen

#TC_04_Browse Trending>Top albums:Validate user is able to navigate to the album list and album details screen
#    [Documentation]    This test is to verfiy the section available
#    [Tags]
#    validate user is on Browse tab
#    navigates to the detail screen of top album list
#    get the text of trending playlist
#    navigates to the detail screen of any album
#    now compare the name of playlist on detail screen
#    navigates to the back screen
#    navigates to the back screen


#TC_05_Browse Trending>Top albums:Validate user is able to add a song in wishlist and validate the same song added on wishlist screen
#    [Documentation]    This test is to verfiy the section available
#    [Tags]
#    validate user is on Browse tab
#    navigates to the detail screen of top album list
#    navigates to the detail screen of any album
#    sleep   5s
#    scroll the list
#    select more option of the second song in playlist
#    save text of that song
#    add song in wishlist
#    verify the message when song added successfully in wishlist
#    tap on viewwislit button
#    #validate user navigates on right tab in wishlist section ***Not able to check the last item***

#TC_07_Browse Trending>Top albums:Validate user is able to added song button changes into the remove button
#    [Documentation]    This test is to verify that text chnages into the remove from playlist
#    [Tags]  Smoke
#    validate user is on Browse tab
#    navigates to the detail screen of top album list
#    navigates to the detail screen of any album
#    sleep   5s
#    scroll the list
#    select more option of the second song in playlist
#    add song in wishlist
#    tap on Ok button of song added/remove
#    select more option of the second song in playlist
#    add button chnages into the remove button
#    go back
#    navigates to the back screen
#    navigates to the back screen


#TC_08_Browse Trending>Top albums:Validate user is able to remove a song from a wishlist through a playlist
#    [Documentation]    This test is to verify user is able to remove song from wishlist
#    [Tags]  Smoke
#    validate user is on Browse tab
#    navigates to the detail screen of top album list
#    navigates to the detail screen of any album
#    sleep   5s
#    scroll the list
#    select more option of the second song in playlist
#    remove song from wishlist
#    #add button chnages into the remove button
#    #tap on the remove the song from playlist button
#    tap on Ok button of song added/remove
#    navigates to the back screen
#    navigates to the back screen
#
#TC_09_Browse Trending>Top albums:validate user is able to create a playlist and add a song into streaming playlist
#    [Documentation]    This test is to verify user is able to adda song to streaming playlist, Verify the message of song added
#    [Tags]  Smoke
#    validate user is on Browse tab
#    navigates to the detail screen of top album list
#    navigates to the detail screen of any album
#    sleep   5s
#    scroll the list
#    select more option of the second song in playlist
#    read the name of the adding song
#    tap on add to streaming playlist button
#    create a new playlist
#    name your playlist from home
#    tap on create playlist button at home
#    Verify the message of song added
#    tap on Ok button of song added/remove
#    navigates to the back screen
#    navigates to the back screen


#TC_10_Browse Trending>Top albums:validate user is able to check the message when tries to add already added song
#    [Documentation]    This test is to verify when user tries to add the same song into the list
#    [Tags]  Smoke
#    validate user is on Browse tab
#    navigates to the detail screen of top album list
#    navigates to the detail screen of any album
#    sleep   5s
#    scroll the list
#    select more option of the second song in playlist
#    tap on add to streaming playlist button
#    add song to streaming playlist
#    check the message when song is already added
#    go back
#    navigates to the back screen
#    navigates to the back screen

#TC_11_Browse Trending>Top albums:validate user is able to check that same song should get added into the streaming playlist
#    [Documentation]    This test is to verify that same song should be added into the list
#    [Tags]  Smoke
#    validate user is on Browse tab
#    navigates to the detail screen of top album list
#    navigates to the detail screen of any album
#    sleep   5s
#    scroll the list
#    select more option of the second song in playlist
#    read the name of the adding song
#    tap on add to streaming playlist button
#    create a new playlist
#    name your playlist from home
#    tap on create playlist button at home
#    Verify the message of song added
#    tap on view playlist button
#    validate user lands to the playlist screen
#    open the first streaming playlist
#    check the text of added song and compare with it
#    navigates to the back screen
#
#
#TC_12_Browse Trending>Top albums>Top albums:validate user is able to download a song
#    [Documentation]    This test is to verify that same song should be added into the list
#    [Tags]  Smoke
#    validate user is on Browse tab
#    navigates to the detail screen of top album list
#    navigates to the detail screen of any album
#    sleep   5s
#    scroll the list
#    select more option of the second song in playlist
#    tap on the downlaod button
#    #verify the download is available for the song
#    verify the message of successfully download
#    tap on Ok button of song added/remove
#    navigates to the back screen
#    navigates to the back screen

#TC_13_Browse Trending>Top albums:validate user is able to stream a list with shuffle off and first song get played
#    [Documentation]    This test is to verify when shuffle is off plays the first song of the list
#    [Tags]  Smoke
#    validate user is on Browse tab
#    navigates to the detail screen of top album list
#    navigates to the detail screen of any album
#    sleep   5s
#    tap on the stream button
#    scroll the list
#    check the name of first song
#    check the name of the song played on music player be same
#    navigates to the back screen
#    navigates to the back screen
#
#TC_14_Browse Trending>Top albums:validate user is able to stream a list with shuffle ON and first song not get played
#    [Documentation]    This test is to verify when shuffle is ON user stream the list any song get played
#    [Tags]  Smoke
#    set log level       debug
#    validate user is on Browse tab
#    navigates to the detail screen of top album list
#    navigates to the detail screen of any album
#    sleep   5s
#    tap on shuffle button
#    tap on the stream button
#    scroll the list
#    check the name of first song
#    check the name of the song played on music player be different
#    navigates to the back screen
#    navigates to the back screen

TC_15_Browse Trending>Top albums:validate user is able to addwhole playlist in streaming playlist
    [Documentation]    This test is to verify when shuffle is ON user stream the list any song get played
    [Tags]  Smoke
    validate user is on Browse tab
    navigates to the detail screen of top album list
    navigates to the detail screen of any album
    sleep   5s
    scroll the list
    now get the name of top three song
    select more option of the second song in playlist
    tap on add to streaming playlist button
    create a new playlist
    name your playlist from home
    tap on create playlist button at home
    Verify the message of song added
    tap on view playlist button
    validate user lands to the playlist screen
    open the first streaming playlist
    check the text of added song and compare with it
    navigates to the back screen


#--- Browse> Trending> Top Albums Testcase> Top Albums ---#
