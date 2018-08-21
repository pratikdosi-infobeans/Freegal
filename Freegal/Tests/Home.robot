*** Settings ***
Documentation  This is the test site for Login into the app
Resource      ../Resources/BasicApp.robot
Resource      ../Resources/Common.robot


Test Setup  launch and login in app
Test Teardown   Logout and close app

*** Test Cases ***

#--- Home> Mymusic> Featured playlist testcases------#

#TC_01_Featured Playlist:Verify the section available in my music tab for m68 library
#    [Documentation]    This test is to verfiy the section available
#    [Tags]
#    validate user is on Home tab
#    Verify the elements

#TC_02_Featured Playlist:Validate user is able to navigates on Recently played tab
#    [Documentation]    This test is to verify that user is able to navigates on recently played screen
#    [Tags]  Smoke
#    validate user is on Home tab
#    navigates to the Home> recently played screen
#
#TC_03_Featured Playlist:Validate user is able to navigates on wishlist screen
#    [Documentation]    This test is to verify  that user is able to navigates on wishlist screen
#    [Tags]  Smoke
#    validate user is on Home tab
#    navigates to the home> wishlist screen
#
#
#TC_04_Featured Playlist:Validate user is able to navigates on the featured playlist section
#    [Documentation]    This test is to verify  that user is able to navigates on the featured playlist section
#    [Tags]  Smoke
#    validate user is on Home tab
#    navigates to the detail screen of featured playlist
#    back to the home screen> featured
#
TC_05_Featured Playlist:Validate user is able to navigates on the featured playlist section and same playist will opens up
    [Documentation]    This test is to verify  that user is able to navigates on the featured playlist detail section of same playlist
    [Tags]  Smoke
    validate user is on Home tab
    get the text of featured playlist
    navigates to the detail screen of featured playlist
    now compare the name on detail screen
    back to the home screen> featured
#
#
#TC_06_Featured Playlist:Validate user is able to add a song in wishlist and validate the same song added on wishlist screen
#    [Documentation]    This test is to verify user is able to add song in wishlist, same song verification and navigation to right tab
#    [Tags]  Smoke
#    validate user is on Home tab
#    navigates to the detail screen of featured playlist
#    sleep   5s
#    scroll the list
#    select more option of the second song in playlist
#    save text of that song
#    add song in wishlist
#    verify the message when song added successfully in wishlist
#    tap on viewwislit button
#    #validate user navigates on right tab in wishlist section ***Not able to check the last item***
#
#
#TC_07_Featured Playlist:Validate user is able to added song button changes into the remove button
#    [Documentation]    This test is to verify that text chnages into the remove from playlist
#    [Tags]  Smoke
#    validate user is on Home tab
#    navigates to the detail screen of featured playlist
#    sleep   5s
#    scroll the list
#    select more option of the second song in playlist
#    add song in wishlist
#    tap on Ok button of song added/remove
#    select more option of the second song in playlist
#    add button chnages into the remove button
#    go back
#    navigates to the back screen


#TC_08_Featured Playlist:Validate user is able to remove a song from a wishlist through a featured playlist
#    [Documentation]    This test is to verify user is able to remove song from wishlist
#    [Tags]  Smoke
#    validate user is on Home tab
#    navigates to the detail screen of featured playlist
#    sleep   5s
#    scroll the list
#    select more option of the second song in playlist
#    remove song from wishlist
#    #add button chnages into the remove button
#    #tap on the remove the song from playlist button
#    tap on Ok button of song added/remove
#    navigates to the back screen

#TC_09_Featured Playlist:validate user is able to create a playlist and add a song into streaming playlist
#    [Documentation]    This test is to verify user is able to adda song to streaming playlist, Verify the message of song added
#    [Tags]  Smoke
#    validate user is on Home tab
#    navigates to the detail screen of featured playlist
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
#
#
#TC_10_Featured Playlist:validate user is able to check the message when tries to add already added song
#    [Documentation]    This test is to verify when user tries to add the same song into the list
#    [Tags]  Smoke
#    validate user is on Home tab
#    navigates to the detail screen of featured playlist
#    sleep   5s
#    scroll the list
#    select more option of the second song in playlist
#    tap on add to streaming playlist button
#    add song to streaming playlist
#    check the message when song is already added
#    go back
#    navigates to the back screen
#
#TC_11_Featured Playlist:validate user is able to check that same song should get added into the streaming playlist
#    [Documentation]    This test is to verify that same song should be added into the list
#    [Tags]  Smoke
#    validate user is on Home tab
#    navigates to the detail screen of featured playlist
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
#TC_12_Featured Playlist:validate user is able to download a song
#    [Documentation]    This test is to verify that same song should be added into the list
#    [Tags]  Smoke
#    validate user is on Home tab
#    navigates to the detail screen of featured playlist
#    sleep   5s
#    scroll the list
#    select more option of the second song in playlist
#    tap on the downlaod button
#    #verify the download is available for the song
#    verify the message of successfully download
#    tap on Ok button of song added/remove
#    navigates to the back screen
#
#TC_13_Featured Playlist:validate user is able to stream a list with shuffle off and first song get played
#    [Documentation]    This test is to verify when shuffle is off plays the first song of the list
#    [Tags]  Smoke
#    validate user is on Home tab
#    navigates to the detail screen of featured playlist
#    sleep   5s
#    tap on the stream button
#    scroll the list
#    check the name of first song
#    check the name of the song played on music player be same
#    navigates to the back screen
#
#TC_14_Featured Playlist:validate user is able to stream a list with shuffle ON and first song not get played
#    [Documentation]    This test is to verify when shuffle is ON user stream the list any song get played
#    [Tags]  Smoke
#    set log level       debug
#    validate user is on Home tab
#    navigates to the detail screen of featured playlist
#    sleep   5s
#    tap on shuffle button
#    tap on the stream button
#    scroll the list
#    check the name of first song
#    check the name of the song played on music player be different
#    navigates to the back screen
#


#---- Home> featured Album test cases>


#TC_04_Featured Album:Validate user is able to navigates on the featured album section
#    [Documentation]    This test is to verify  that user is able to navigates on the featured playlist section
#    [Tags]  Smoke
#    validate user is on Home tab
#    scroll to the featured album list
#    navigates to the detail screen of featured album
#    back to the home screen> featured
#
#
#TC_05_Featured Album:Validate user is able to navigates on the featured album section and same album playist will opens up
#    [Documentation]    This test is to verify  that user is able to navigates on the featured playlist detail section of same playlist
#    [Tags]  Smoke
#    validate user is on Home tab
#    scroll to the featured album list
#    get the text of featured album playlist
#    navigates to the detail screen of featured album
#    now compare the name of album on detail screen
#    back to the home screen> featured

#TC_06_Featured Album:Validate user is able to add a song in wishlist from album playlist and validate the same song added on wishlist screen
#    [Documentation]    This test is to verify user is able to add song in wishlist, same song verification and navigation to right tab
#    [Tags]  Smoke
#    validate user is on Home tab
#    scroll to the featured album list
#    navigates to the detail screen of featured album
#    sleep   5s
#    scroll the list
#    select more option of the second song in playlist
#    save text of that song
#    add song in wishlist
#    verify the message when song added successfully in wishlist
#    tap on viewwislit button
#    #validate user navigates on right tab in wishlist section ***Not able to check the last item***


#TC_07_Featured Album:Validate user is able to added song from featured album and button changes into the remove button
#    [Documentation]    This test is to verify that text chnages into the remove from playlist
#    [Tags]  Smoke
#    validate user is on Home tab
#    scroll to the featured album list
#    navigates to the detail screen of featured album
#    sleep   5s
#    scroll the list
#    select more option of the second song in playlist
#    add song in wishlist
#    tap on Ok button of song added/remove
#    select more option of the second song in playlist
#    add button chnages into the remove button
#    go back
#    navigates to the back screen
#
#TC_08_Featured Album:Validate user is able to remove a song from the featured album list
#    [Documentation]    This test is to verify user is able to remove song from wishlist
#    [Tags]  Smoke
#    validate user is on Home tab
#    scroll to the featured album list
#    navigates to the detail screen of featured album
#    sleep   5s
#    scroll the list
#    select more option of the second song in playlist
#    remove song from wishlist
#    tap on Ok button of song added/remove
#    navigates to the back screen

#TC_09_Featured Album:validate user is able to create a playlist and add a song into streaming playlist through featured album
#    [Documentation]    This test is to verify user is able to adda song to streaming playlist, Verify the message of song added
#    [Tags]  Smoke
#    validate user is on Home tab
#    scroll to the featured album list
#    navigates to the detail screen of featured album
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
#
#TC_10_Featured Album: Validate user is able to check the message when tries to add already added song
#    [Documentation]    This test is to verify when user tries to add the same song into the list
#    [Tags]  Smoke
#    validate user is on Home tab
#    scroll to the featured album list
#    navigates to the detail screen of featured album
#    sleep   5s
#    scroll the list
#    select more option of the second song in playlist
#    tap on add to streaming playlist button
#    add song to streaming playlist
#    check the message when song is already added
#    go back
#    navigates to the back screen
#
#TC_11_Featured Album:validate user is able to check that same song should get added into the streaming playlist
#    [Documentation]    This test is to verify that same song should be added into the list
#    [Tags]  Smoke
#    validate user is on Home tab
#    scroll to the featured album list
#    navigates to the detail screen of featured album
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

# Download test case is missing


#TC_13_Featured Album:validate user is able to stream a list with shuffle off and first song get played
#    [Documentation]    This test is to verify when shuffle is off plays the first song of the list
#    [Tags]  Smoke
#    validate user is on Home tab
#    scroll to the featured album list
#    navigates to the detail screen of featured album
#    sleep   5s
#    tap on the stream button
#    scroll the list
#    check the name of first song
#    check the name of the song played on music player be same
#    navigates to the back screen
#
#TC_14_Featured Album:validate user is able to stream a list with shuffle ON and first song not get played
#    [Documentation]    This test is to verify when shuffle is ON user stream the list any song get played
#    [Tags]  Smoke
#    set log level       debug
#    validate user is on Home tab
#    scroll to the featured album list
#    navigates to the detail screen of featured album
#    sleep   5s
#    tap on shuffle button
#    tap on the stream button
#    scroll the list
#    check the name of first song
#    check the name of the song played on music player be different
#    navigates to the back screen
#



#---- Home> featured Song test cases>


#TC_04_Featured Songs:Validate the same song get played in music player
#    [Documentation]    This test is to verify  that user is able to play the song and same song get played in music player
#    [Tags]  Smoke
#    validate user is on Home tab
#    scroll to the featured songs list
#    check the name of song and play it from featured song
#    check the name of the song played on music player be same as featured album


#TC_05_Featured Album:Validate user is able to  play the song from featured album and same song get added in recently played section
#    [Documentation]    This test is to verify  that user is able to play the song from featured album section and same song addedd in recently played
#    [Tags]  Smoke
#    validate user is on Home tab
#    scroll to the featured songs list
#    check the name of 3rd song and play it from featured song
#    sleep   7s
#    scroll to the top
#    scroll to the top
#    compare the text of the first song of recently played with last played song

#--------- Featured>  Music videos section Test cases----



#TC_04_Featured Music Videos:Validate the same video action sheet open up on tap on it
#    [Documentation]    This test is to verify  that the right video action sheet opens up
#    [Tags]  Smoke
#    validate user is on Home tab
#    scroll to the featured music videos list
#    check the name of the second video in list
#     tap that second video in list
#     compare the name in action sheet
#    Cancel the popup screen of more streaming playlist option

#TC_05_Featured Music Videos:Validate that user is able to add the video in wishlist
#    [Documentation]    This test is to verify  that the right video action sheet opens up
#    [Tags]  Smoke
#    validate user is on Home tab
#    scroll to the featured music videos list
#    tap that second video in list
#    add video song in wishlist
#    verify the message when video added successfully in wishlist
#    tap on Ok button of song added/remove

#TC_06_Featured Music Videos:Validate that user is able to add to add a video in wishlist and text chnages to remove fom wishlist
#    [Documentation]    This test is to verify that user add the video and text get chnages
#    [Tags]  Smoke
#    validate user is on Home tab
#    scroll to the featured music videos list
#    tap that second video in list
#    add video song in wishlist
#    verify the message when video added successfully in wishlist
#    tap on Ok button of song added/remove
#    sleep   3s
#    tap that second video in list
#    add button chnages into the remove button
#    go back

#Issue in dev build
#TC_06_Featured Music Videos:Validate that user is able to remove a video from wishlist
#    [Documentation]    This test is to verify that user add the video and text get chnages
#    [Tags]  Smoke
#    validate user is on Home tab
#    scroll to the featured music videos list
#    tap that second video in list
#     remove video song from wishlist
#     tap on Ok button of song added/remove



##------------Home>Featured artist test cases-------------------

#TC_04_Featured Artist:Validate user is able to navigates on the featured artist section
#    [Documentation]    This test is to verify  that user is able to navigates on the featured playlist section
#    [Tags]  Smoke
#    validate user is on Home tab
#    scroll to the featured artist list
#    navigates to the detail screen of featured artist
#    back to the home screen> featured

#TC_05_Featured Artist:Validate user is able to navigates on the featured artist section and same artist details screen opens up
#    [Documentation]    This test is to verify  that user is able to navigates on the featured artist detail section of same artist
#    [Tags]  Smoke
#    validate user is on Home tab
#    scroll to the featured artist list
#    get the text of featured artist playlist
#    navigates to the detail screen of featured artist
#    now compare the name of artist on detail screen
#    back to the home screen> featured


#TC_06_Featured Artist:Validate user is able to add a song in wishlist from artist playlist and validate the same song added on wishlist screen
#    [Documentation]    This test is to verify user is able to add song in wishlist, same song verification and navigation to right tab
#    [Tags]  Smoke
#    validate user is on Home tab
#    scroll to the featured artist list
#    navigates to the detail screen of featured artist
#    sleep   5s
#    scroll the list
#    select more option of the second song in playlist
#    save text of that song
#    add song in wishlist
#    verify the message when song added successfully in wishlist
#    tap on viewwislit button
#    #validate user navigates on right tab in wishlist section ***Not able to check the last item***


#TC_07_Featured Album:Validate user is able to added song from featured album and button changes into the remove button
#    [Documentation]    This test is to verify that text chnages into the remove from playlist
#    [Tags]  Smoke
#    validate user is on Home tab
#    scroll to the featured album list
#    navigates to the detail screen of featured album
#    sleep   5s
#    scroll the list
#    select more option of the second song in playlist
#    add song in wishlist
#    tap on Ok button of song added/remove
#    select more option of the second song in playlist
#    add button chnages into the remove button
#    go back
#    navigates to the back screen
#
#TC_08_Featured Album:Validate user is able to remove a song from the featured album list
#    [Documentation]    This test is to verify user is able to remove song from wishlist
#    [Tags]  Smoke
#    validate user is on Home tab
#    scroll to the featured album list
#    navigates to the detail screen of featured album
#    sleep   5s
#    scroll the list
#    select more option of the second song in playlist
#    remove song from wishlist
#    tap on Ok button of song added/remove
#    navigates to the back screen

#TC_09_Featured Album:validate user is able to create a playlist and add a song into streaming playlist through featured album
#    [Documentation]    This test is to verify user is able to adda song to streaming playlist, Verify the message of song added
#    [Tags]  Smoke
#    validate user is on Home tab
#    scroll to the featured album list
#    navigates to the detail screen of featured album
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
#
#TC_10_Featured Album: Validate user is able to check the message when tries to add already added song
#    [Documentation]    This test is to verify when user tries to add the same song into the list
#    [Tags]  Smoke
#    validate user is on Home tab
#    scroll to the featured album list
#    navigates to the detail screen of featured album
#    sleep   5s
#    scroll the list
#    select more option of the second song in playlist
#    tap on add to streaming playlist button
#    add song to streaming playlist
#    check the message when song is already added
#    go back
#    navigates to the back screen
#
#TC_11_Featured Album:validate user is able to check that same song should get added into the streaming playlist
#    [Documentation]    This test is to verify that same song should be added into the list
#    [Tags]  Smoke
#    validate user is on Home tab
#    scroll to the featured album list
#    navigates to the detail screen of featured album
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

# Download test case is missing


#TC_13_Featured Album:validate user is able to stream a list with shuffle off and first song get played
#    [Documentation]    This test is to verify when shuffle is off plays the first song of the list
#    [Tags]  Smoke
#    validate user is on Home tab
#    scroll to the featured album list
#    navigates to the detail screen of featured album
#    sleep   5s
#    tap on the stream button
#    scroll the list
#    check the name of first song
#    check the name of the song played on music player be same
#    navigates to the back screen
#
#TC_14_Featured Album:validate user is able to stream a list with shuffle ON and first song not get played
#    [Documentation]    This test is to verify when shuffle is ON user stream the list any song get played
#    [Tags]  Smoke
#    set log level       debug
#    validate user is on Home tab
#    scroll to the featured album list
#    navigates to the detail screen of featured album
#    sleep   5s
#    tap on shuffle button
#    tap on the stream button
#    scroll the list
#    check the name of first song
#    check the name of the song played on music player be different
#    navigates to the back screen