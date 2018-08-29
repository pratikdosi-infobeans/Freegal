*** Settings ***
Documentation  This is the test site for Login into the app
Resource      ../Resources/BasicApp.robot
Resource      ../Resources/Common.robot
#Library    Collections
#Library    RequestsLibrary


Test Setup  launch and login in app
Test Teardown   Logout and close app

*** Test Cases ***

#--- Home> Mymusic> Featured playlist testcases------#

TC_01_Featured Playlist:Verify the section available in my music tab for m68 library
    [Documentation]    This test is to verfiy the section available
    [Tags]
    Homescreen.validate user is on Home tab
    Homescreen.Verify the sections available

#TC_02_Featured Playlist:Validate user is able to navigates on Recently played screen tab
#    [Documentation]    This test is to verify that user is able to navigates on recently played screen
#    [Tags]  Smoke
#    Homescreen.validate user is on Home tab
#    Homescreen.navigates to the Home> recently played screen
#
#TC_03_Featured Playlist:Validate user is able to navigates on wishlist screen tab
#    [Documentation]    This test is to verify  that user is able to navigates on wishlist screen
#    [Tags]  Smoke
#    Homescreen.validate user is on Home tab
#    Homescreen.navigates to the home> wishlist screen
#
#
#TC_04_Featured Playlist:Validate user is able to navigates on the featured playlist screen
#    [Documentation]    This test is to verify  that user is able to navigates on the featured playlist screen
#    [Tags]  Smoke
#    Homescreen.validate user is on Home tab
#    Homescreen.navigates to the detail screen of second item in featured playlist section
#    Homescreen.back to the home screen> featured
#
#TC_05_Featured Playlist:Validate user is able to navigates on the featured playlist section and same playist will opens up
#    [Documentation]    This test is to verify  that user is able to navigates on the featured playlist detail section of same playlist
#    [Tags]  Smoke
#    Homescreen.validate user is on Home tab
#    Homescreen.get the text of second item of featured playlist
#    Homescreen.navigates to the detail screen of second item in featured playlist section
#    HomeScreen.now compare the name of playlist on detail screen
#    Homescreen.back to the home screen> featured
#
#TC_06_Featured Playlist:Validate user is able to add a song in wishlist and validate the same song added on wishlist screen
#    [Documentation]    This test is to verify user is able to add song in wishlist, same song verification and navigation to right tab
#    [Tags]  Smoke
#    HomeScreen.validate user is on Home tab
#    HomeScreen.navigates to the detail screen of second item in featured playlist section
#    BasicApp.scroll the list
#    HomeScreen.select more option of the second song in playlist
#    HomeScreen.save text of that song
#    HomeScreen.add song in wishlist
#    HomeScreen.verify the message when song added successfully in wishlist
#    BasicApp.tap at viewwislit button in popup
#    #validate user navigates on right tab in wishlist section ***Not able to check the last item***
#
#
#TC_07_Featured Playlist:Validate that text of added song chnages into the remove from wishlist
#    [Documentation]    This test is to verify that text chnages into the remove from wishlist
#    [Tags]  Smoke
#    HomeScreen.validate user is on Home tab
#    HomeScreen.navigates to the detail screen of second item in featured playlist section
#    BasicApp.scroll the list
#    HomeScreen.select more option of the second song in playlist
#    HomeScreen.add song in wishlist
#    HomeScreen.tap on Ok button of song added/remove
#    HomeScreen.select more option of the second song in playlist
#    HomeScreen.add button chnages into the remove button
#    go back
#    BasicApp.navigates to the back screen
#
#
#TC_08_Featured Playlist:Validate user is able to remove a song from a wishlist through a featured playlist
#    [Documentation]    This test is to verify user is able to remove song from wishlist
#    [Tags]  Smoke
#    HomeScreen.validate user is on Home tab
#    HomeScreen.navigates to the detail screen of second item in featured playlist section
#    BasicApp.scroll the list
#    HomeScreen.select more option of the second song in playlist
#    HomeScreen.remove song from wishlist
#    #add button chnages into the remove button
#    #tap on the remove the song from playlist button
#    HomeScreen.tap on Ok button of song added/remove
#    BasicApp.navigates to the back screen
#
#TC_09_Featured Playlist:validate user is able to create a playlist and add a song into that streaming playlist
#    [Documentation]    This test is to verify user is able to add song to streaming playlist, Verify the message of song added
#    [Tags]  Smoke
#    HomeScreen.validate user is on Home tab
#    HomeScreen.navigates to the detail screen of second item in featured playlist section
#    BasicApp.scroll the list
#    HomeScreen.select more option of the second song in playlist
#    HomeScreen.get the name of the adding song
#    HomeScreen.tap on add to streaming playlist button
#    HomeScreen.create a new playlist
#    BasicApp.name your streaming playlist
#    BasicApp.tap on create playlist button at popup
#    HomeScreen.Verify the message of song added
#    HomeScreen.tap on Ok button of song added/remove
#    BasicApp.navigates to the back screen
#
#
#TC_10_Featured Playlist:validate user is able to check the message when tries to add already added song
#    [Documentation]    This test is to verify when user tries to add the same song into the list
#    [Tags]  Smoke
#    HomeScreen.validate user is on Home tab
#    HomeScreen.navigates to the detail screen of second item in featured playlist section
#    BasicApp.scroll the list
#    HomeScreen.select more option of the second song in playlist
#    HomeScreen.tap on add to streaming playlist button
#    HomeScreen.add song to streaming playlist
#    HomeScreen.check the message when song is already added
#    go back
#    BasicApp.navigates to the back screen
#
#TC_11_Featured Playlist:validate user is able to check that same song should get added into the streaming playlist
#    [Documentation]    This test is to verify that same song should be added into the streaming list
#    [Tags]  Smoke
#    HomeScreen.validate user is on Home tab
#    HomeScreen.navigates to the detail screen of second item in featured playlist section
#    BasicApp.scroll the list
#    HomeScreen.select more option of the second song in playlist
#    HomeScreen.get the name of the adding song
#    HomeScreen.tap on add to streaming playlist button
#    HomeScreen.create a new playlist
#    BasicApp.name your streaming playlist
#    BasicApp.tap on create playlist button at popup
#    HomeScreen.Verify the message of song added
#    HomeScreen.tap on view playlist button
#    HomeScreen.validate user lands to the playlist screen
#    HomeScreen.open the first streaming playlist
#    HomeScreen.check the text of added song and compare with it
#    BasicApp.navigates to the back screen
#
#
#TC_12_Featured Playlist:validate user is able to download a song
#    [Documentation]    This test is to validate user is able to downlaod the song
#    [Tags]  Smoke
#    HomeScreen.validate user is on Home tab
#    HomeScreen.navigates to the detail screen of second item in featured playlist section
#    BasicApp.scroll the list
#    HomeScreen.select more option of the second song in playlist
#    HomeScreen.tap on the downlaod button
#    #verify the download is available for the song
#    HomeScreen.verify the message of successfully download
#    HomeScreen.tap on Ok button of song added/remove
#    BasicApp.navigates to the back screen
#
#TC_13_Featured Playlist:validate user is able to stream a list with shuffle off and first song get played
#    [Documentation]    This test is to verify when shuffle is off plays the first song of the list
#    [Tags]  Smoke
#    HomeScreen.validate user is on Home tab
#    HomeScreen.navigates to the detail screen of second item in featured playlist section
#    BasicApp.tap on the stream button
#    BasicApp.scroll the list
#    HomeScreen.check the name of first song
#    HomeScreen.check the name of the song played on music player be same
#    BasicApp.navigates to the back screen
#
#TC_14_Featured Playlist:validate user is able to stream a list with shuffle ON and first song not get played
#    [Documentation]    This test is to verify when shuffle is ON user stream the list any song get played
#    [Tags]  Smoke
#    set log level       debug
#    HomeScreen.validate user is on Home tab
#    HomeScreen.navigates to the detail screen of second item in featured playlist section
#    BasicApp.tap on shuffle button
#    BasicApp.tap on the stream button
#    BasicApp.scroll the list
#    HomeScreen.check the name of first song
#    HomeScreen.check the name of the song played on music player be different
#    BasicApp.navigates to the back screen
#
#
#
##Home> featured Album test cases>
#
#
#TC_15_Featured Album:Validate user is able to navigates on the featured album section
#    [Documentation]    This test is to verify  that user is able to navigates on the featured playlist section
#    [Tags]  Smoke
#    HomeScreen.validate user is on Home tab
#    BasicApp.scroll to the featured album list
#    HomeScreen.navigates to the detail screen of third featured album
#    HomeScreen.back to the home screen> featured
#
#
#TC_16_Featured Album:Validate user is able to navigates on the featured album section and same album playist will opens up
#    [Documentation]    This test is to verify  that user is able to navigates on the featured playlist detail section of same playlist
#    [Tags]  Smoke
#    HomeScreen.validate user is on Home tab
#    BasicApp.scroll to the featured album list
#    HomeScreen.get the text of third featured album playlist
#    HomeScreen.navigates to the detail screen of third featured album
#    HomeScreen.now compare the name of album on detail screen
#    HomeScreen.back to the home screen> featured
#
#TC_17_Featured Album:Validate user is able to add a song in wishlist from album playlist and validate the same song added on wishlist screen
#    [Documentation]    This test is to verify user is able to add song in wishlist, same song verification and navigation to right tab
#    [Tags]  Smoke
#    HomeScreen.validate user is on Home tab
#    BasicApp.scroll to the featured album list
#    HomeScreen.navigates to the detail screen of third featured album
#    BasicApp.scroll the list
#    HomeScreen.select more option of the second song in playlist
#    HomeScreen.save text of that song
#    HomeScreen.add song in wishlist
#    HomeScreen.verify the message when song added successfully in wishlist
#    BasicApp.tap at viewwislit button in popup
#    #validate user navigates on right tab in wishlist section ***Not able to check the last item***
#
#
#TC_18_Featured Album:Validate user is able to added song from featured album and button changes into the remove button
#    [Documentation]    This test is to verify that text chnages into the remove from playlist
#    [Tags]  Smoke
#    HomeScreen.validate user is on Home tab
#    BasicApp.scroll to the featured album list
#    HomeScreen.navigates to the detail screen of third featured album
#    BasicApp.scroll the list
#    HomeScreen.select more option of the second song in playlist
#    HomeScreen.add song in wishlist
#    HomeScreen.tap on Ok button of song added/remove
#    HomeScreen.select more option of the second song in playlist
#    HomeScreen.add button chnages into the remove button
#    go back
#    BasicApp.navigates to the back screen
#
#TC_19_Featured Album:Validate user is able to remove a song from the featured album list
#    [Documentation]    This test is to verify user is able to remove song from wishlist
#    [Tags]  Smoke
#    HomeScreen.validate user is on Home tab
#    BasicApp.scroll to the featured album list
#    HomeScreen.navigates to the detail screen of third featured album
#    BasicApp.scroll the list
#    HomeScreen.select more option of the second song in playlist
#    HomeScreen.remove song from wishlist
#    HomeScreen.tap on Ok button of song added/remove
#    BasicApp.navigates to the back screen
#
#TC_20_Featured Album:validate user is able to create a playlist and add a song into streaming playlist through featured album
#    [Documentation]    This test is to verify user is able to adda song to streaming playlist, Verify the message of song added
#    [Tags]  Smoke
#    HomeScreen.validate user is on Home tab
#    BasicApp.scroll to the featured album list
#    HomeScreen.navigates to the detail screen of third featured album
#    BasicApp.scroll the list
#    HomeScreen.select more option of the second song in playlist
#    HomeScreen.get the name of the adding song
#    HomeScreen.tap on add to streaming playlist button
#    HomeScreen.create a new playlist
#    BasicApp.name your streaming playlist
#    BasicApp.tap on create playlist button at popup
#    HomeScreen.Verify the message of song added
#    HomeScreen.tap on Ok button of song added/remove
#    BasicApp.navigates to the back screen
#
#TC_21_Featured Album: Validate user is able to check the message when tries to add already added song
#    [Documentation]    This test is to verify when user tries to add the same song into the list
#    [Tags]  Smoke
#    HomeScreen.validate user is on Home tab
#    BasicApp.scroll to the featured album list
#    HomeScreen.navigates to the detail screen of third featured album
#    BasicApp.scroll the list
#    HomeScreen.select more option of the second song in playlist
#    HomeScreen.tap on add to streaming playlist button
#    HomeScreen.add song to streaming playlist
#    HomeScreen.check the message when song is already added
#    go back
#    BasicApp.navigates to the back screen
#
#TC_22_Featured Album:validate user is able to check that same song should get added into the streaming playlist
#    [Documentation]    This test is to verify that same song should be added into the list
#    [Tags]  Smoke
#    HomeScreen.validate user is on Home tab
#    BasicApp.scroll to the featured album list
#    HomeScreen.navigates to the detail screen of third featured album
#    BasicApp.scroll the list
#    HomeScreen.select more option of the second song in playlist
#    HomeScreen.get the name of the adding song
#    HomeScreen.tap on add to streaming playlist button
#    HomeScreen.create a new playlist
#    BasicApp.name your streaming playlist
#    BasicApp.tap on create playlist button at popup
#    HomeScreen.Verify the message of song added
#    HomeScreen.tap on view playlist button
#    HomeScreen.validate user lands to the playlist screen
#    HomeScreen.open the first streaming playlist
#    HomeScreen.check the text of added song and compare with it
#    BasicApp.navigates to the back screen
#
## Download test case is missing
#
#
#TC_23_Featured Album:validate user is able to stream a list with shuffle off and first song get played
#    [Documentation]    This test is to verify when shuffle is off plays the first song of the list
#    [Tags]  Smoke
#    HomeScreen.validate user is on Home tab
#    BasicApp.scroll to the featured album list
#    HomeScreen.navigates to the detail screen of third featured album
#    BasicApp.tap on the stream button
#    BasicApp.scroll the list
#    HomeScreen.check the name of first song
#    HomeScreen.check the name of the song played on music player be same
#    BasicApp.navigates to the back screen
#
#TC_24_Featured Album:validate user is able to stream a list with shuffle ON and first song not get played
#    [Documentation]    This test is to verify when shuffle is ON user stream the list any song get played
#    [Tags]  Smoke
#    set log level       debug
#    HomeScreen.validate user is on Home tab
#    BasicApp.scroll to the featured album list
#    HomeScreen.navigates to the detail screen of third featured album
#    BasicApp.tap on shuffle button
#    BasicApp.tap on the stream button
#    BasicApp.scroll the list
#    HomeScreen.check the name of first song
#    HomeScreen.check the name of the song played on music player be different
#    BasicApp.navigates to the back screen
#
#
#
#
##---- Home> featured Song test cases>
#
#
#TC_25_Featured Songs:Validate the same song get played in music player
#    [Documentation]    This test is to verify  that user is able to play the song and same song get played in music player
#    [Tags]  Smoke
#    HomeScreen.validate user is on Home tab
#    BasicApp.scroll to the featured songs list
#    HomeScreen.check the name of song and play it from featured song
#    HomeScreen.check the name of the song played on music player be same
#
#
#TC_26_Featured songs:Validate user is able to play the song from featured album and same song get added in recently played section
#    [Documentation]    This test is to verify  that user is able to play the song from featured song section and same song addedd in recently played
#    [Tags]  Smoke
#    HomeScreen.validate user is on Home tab
#    BasicApp.scroll to the featured songs list
#    HomeScreen.check the name of 3rd song and play it from featured song
#    sleep   7s
#    BasicApp.scroll to the top
#    BasicApp.scroll to the top
#    HomeScreen.compare the text of the first song of recently played with last played song
#
##--------- Featured>  Music videos section Test cases----
#
#
#
#TC_27_Featured Music Videos:Validate the same video action sheet open up on tap on it
#    [Documentation]    This test is to verify  that the right video action sheet opens up
#    [Tags]  Smoke
#    HomeScreen.validate user is on Home tab
#    BasicApp.scroll to the featured music videos list
#    HomeScreen.check the name of the second video in list
#    HomeScreen.tap that second video in list
#    HomeScreen.compare the name in action sheet
#    MyMusicScreen.Cancel the popup screen of more option
#
#TC_28_Featured Music Videos:Validate that user is able to add the video in wishlist
#    [Documentation]    This test is to verify  that the right video action sheet opens up
#    [Tags]  Smoke
#    HomeScreen.validate user is on Home tab
#    BasicApp.scroll to the featured music videos list
#    HomeScreen.tap that second video in list
#    HomeScreen.add video song in wishlist
#    HomeScreen.verify the message when video added successfully in wishlist
#    HomeScreen.tap on Ok button of song added/remove
#
#TC_29_Featured Music Videos:Validate that user is able to add to add a video in wishlist and text chnages to remove fom wishlist
#    [Documentation]    This test is to verify that user add the video and text get chnages
#    [Tags]  Smoke
#    HomeScreen.validate user is on Home tab
#    BasicApp.scroll to the featured music videos list
#    HomeScreen.tap that second video in list
#    HomeScreen.add video song in wishlist
#    HomeScreen.verify the message when video added successfully in wishlist
#    HomeScreen.tap on Ok button of song added/remove
#    sleep   3s
#    HomeScreen.tap that second video in list
#    HomeScreen.add button chnages into the remove button
#    go back
#
#TC_30_Featured Music Videos:Validate that user is able to remove a video from wishlist
#    [Documentation]    This test is to verify that user add the video and text get chnages
#    [Tags]  Smoke
#    validate user is on Home tab
#    scroll to the featured music videos list
#    tap that second video in list
#    remove video song from wishlist
#    tap on Ok button of song added/remove
#
#
#
###------------Home>Featured artist test cases-------------------
#
#TC_31_Featured Artist:Validate user is able to navigates on the featured artist section
#    [Documentation]    This test is to verify  that user is able to navigates on the featured playlist section
#    [Tags]  Smoke
#    HomeScreen.validate user is on Home tab
#    BasicApp.scroll to the featured artist list
#    HomeScreen.navigates to the detail screen of featured artist
#    HomeScreen.back to the home screen> featured
#
#TC_32_Featured Artist:Validate user is able to navigates on the featured artist section and same artist details screen opens up
#    [Documentation]    This test is to verify  that user is able to navigates on the featured artist detail section of same artist
#    [Tags]  Smoke
#    HomeScreen.validate user is on Home tab
#    BasicApp.scroll to the featured artist list
#    HomeScreen.get the text of featured artist playlist
#    HomeScreen.navigates to the detail screen of featured artist
#    HomeScreen.now compare the name of artist on detail screen
#    HomeScreen.back to the home screen> featured
#
#
#TC_33_Featured Artist:Validate user is able to add a song in wishlist from artist playlist and validate the same song added on wishlist screen
#    [Documentation]    This test is to verify user is able to add song in wishlist, same song verification and navigation to right tab
#    [Tags]  Smoke
#    HomeScreen.validate user is on Home tab
#    BasicApp.scroll to the featured artist list
#    HomeScreen.navigates to the detail screen of featured artist
#    BasicApp.scroll the list
#    HomeScreen.select more option of the second song in playlist
#    HomeScreen.save text of that song
#    HomeScreen.add song in wishlist
#    HomeScreen.verify the message when song added successfully in wishlist
#    BasicApp.tap at viewwislit button in popup
#    #validate user navigates on right tab in wishlist section ***Not able to check the last item***
#
#
#TC_34_Featured Artist:Validate user is able to added song from featured album and button changes into the remove button
#    [Documentation]    This test is to verify that text chnages into the remove from playlist
#    [Tags]  Smoke
#    HomeScreen.validate user is on Home tab
#    BasicApp.scroll to the featured artist list
#    HomeScreen.navigates to the detail screen of featured artist
#    BasicApp.scroll the list
#    HomeScreen.select more option of the second song in playlist
#    HomeScreen.add song in wishlist
#    HomeScreen.tap on Ok button of song added/remove
#    HomeScreen.select more option of the second song in playlist
#    HomeScreen.add button chnages into the remove button
#    go back
#    BasicApp.navigates to the back screen
#
#TC_35_Featured Artist:Validate user is able to remove a song from the featured album list
#    [Documentation]    This test is to verify user is able to remove song from wishlist
#    [Tags]  Smoke
#    HomeScreen.validate user is on Home tab
#    BasicApp.scroll to the featured artist list
#    HomeScreen.navigates to the detail screen of featured artist
#    BasicApp.scroll the list
#    HomeScreen.select more option of the second song in playlist
#    HomeScreen.remove song from wishlist
#    HomeScreen.tap on Ok button of song added/remove
#    BasicApp.navigates to the back screen
#
#TC_36_Featured Artist:validate user is able to create a playlist and add a song into streaming playlist through featured album
#    [Documentation]    This test is to verify user is able to adda song to streaming playlist, Verify the message of song added
#    [Tags]  Smoke
#    HomeScreen.validate user is on Home tab
#    BasicApp.scroll to the featured artist list
#    HomeScreen.navigates to the detail screen of featured artist
#    BasicApp.scroll the list
#    HomeScreen.select more option of the second song in playlist
#    HomeScreen.get the name of the adding song
#    HomeScreen.tap on add to streaming playlist button
#    HomeScreen.create a new playlist
#    BasicApp.name your streaming playlist
#    BasicApp.tap on create playlist button at popup
#    HomeScreen.Verify the message of song added
#    HomeScreen.tap on Ok button of song added/remove
#    BasicApp.navigates to the back screen
#
#TC_37_Featured Artist: Validate user is able to check the message when tries to add already added song
#    [Documentation]    This test is to verify when user tries to add the same song into the list
#    [Tags]  Smoke
#    HomeScreen.validate user is on Home tab
#    BasicApp.scroll to the featured artist list
#    HomeScreen.navigates to the detail screen of featured artist
#    BasicApp.scroll the list
#    HomeScreen.select more option of the second song in playlist
#    HomeScreen.tap on add to streaming playlist button
#    HomeScreen.add song to streaming playlist
#    HomeScreen.check the message when song is already added
#    go back
#    BasicApp.navigates to the back screen
#
#TC_38_Featured Artist:validate user is able to check that same song should get added into the streaming playlist
#    [Documentation]    This test is to verify that same song should be added into the list
#    [Tags]  Smoke
#    HomeScreen.validate user is on Home tab
#    BasicApp.scroll to the featured artist list
#    HomeScreen.navigates to the detail screen of featured artist
#    BasicApp.scroll the list
#    HomeScreen.select more option of the second song in playlist
#    HomeScreen.get the name of the adding song
#    HomeScreen.tap on add to streaming playlist button
#    HomeScreen.create a new playlist
#    BasicApp.name your streaming playlist
#    BasicApp.tap on create playlist button at popup
#    HomeScreen.Verify the message of song added
#    HomeScreen.tap on view playlist button
#    HomeScreen.validate user lands to the playlist screen
#    HomeScreen.open the first streaming playlist
#    HomeScreen.check the text of added song and compare with it
#    BasicApp.navigates to the back screen
#
### Download test case is missing
##
## Featured Artist > featured Album
#




