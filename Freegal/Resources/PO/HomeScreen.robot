*** Settings ***
Library     AppiumLibrary
Library     String
#Library     DateTime
Library     robot.libraries.DateTime

*** Variables ***
${i}        0
${SONG_NAME}     abc
${tempcheckedstatus}        true
${firstsonginplaylist}
${NameOfPlaylist}
${NAME_OF_ALBUM}
# SOng played in featured songs section (First song)
${SONG_PLAYED_FEATUREDSONGS}
# featured video 3rd song
${NAME_OF_FEATURED_MUSIC_VIDEO}

${NAME_OF_ARTIST}

@{abder}      xpath=//android.support.v7.widget.RecyclerView[@index='0']/android.widget.RelativeLayout[@index=${i}]
${i}        1

*** Keywords ***

Verify the elements
    #wait until element is visible  xpath=//android.widget.TextView[@text='Recently Played']      25s
    element name should be      xpath=//android.widget.TextView[@text='Recently Played']      Recently Played
    element name should be      xpath=//android.widget.TextView[@text='Featured Playlists']      Featured Playlists
    swipe by percent    50      90      50      40      1000
    sleep  3s
    element name should be      xpath=//android.widget.TextView[@text='m68 Interactive Playlists']      m68 Interactive Playlists
    element name should be      xpath=//android.widget.TextView[@text='Featured Albums']      Featured Albums
    swipe by percent    50      90      50      40      1000
    sleep  3s
    element name should be      xpath=//android.widget.TextView[@text='Featured Songs']      Featured Songs
    swipe by percent    50      90      50      40      1000
    sleep  3s
    element name should be      xpath=//android.widget.TextView[@text='Featured Music Videos']      Featured Music Videos
    swipe by percent    50      90      50      40      1000
    sleep  3s
    element name should be      xpath=//android.widget.TextView[@text='Featured Audiobooks']      Featured Audiobooks
    element name should be      xpath=//android.widget.TextView[@text='Featured Artists']      Featured Artists

validate user is on Home tab
    wait until element is visible  xpath=//android.widget.TextView[@text='Recently Played']      35s

navigates to the Home> recently played screen
    click element       xpath=//android.widget.TextView[@text='RECENTLY PLAYED']
    element should be visible       xpath=//android.widget.TextView[@text='Recently Played']
    sleep   5s

get the text of featured playlist
    ${NameOfPlaylist}       get element attribute       xpath=//android.widget.RelativeLayout[@index='1']/android.widget.RelativeLayout[@index='0']/android.widget.RelativeLayout[@index='0']/android.widget.FrameLayout[@index='2']/android.support.v7.widget.RecyclerView[@index='0']/android.widget.RelativeLayout[@index='1']/android.widget.RelativeLayout[@index='0']/android.widget.LinearLayout[@index='1']/android.widget.TextView[@index='0']      text
    set global variable         ${NameOfPlaylist}
    log to console      ${NameOfPlaylist}

get the text of featured album playlist
    ${NAME_OF_ALBUM}       get element attribute       xpath=//android.widget.RelativeLayout[@index='3']/android.widget.RelativeLayout[@index='0']/android.widget.RelativeLayout[@index='0']/android.widget.FrameLayout[@index='2']/android.support.v7.widget.RecyclerView[@index='0']/android.widget.RelativeLayout[@index='2']/android.widget.RelativeLayout[@index='0']/android.widget.LinearLayout[@index='1']/android.widget.TextView[@index='0']      text
    set global variable         ${NAME_OF_ALBUM}
    log to console      ${NAME_OF_ALBUM}

get the text of featured artist playlist
    ${NAME_OF_ARTIST}       get element attribute       xpath=//android.widget.RelativeLayout[@index='7']/android.widget.RelativeLayout[@index='0']/android.widget.RelativeLayout[@index='0']/android.widget.FrameLayout[@index='2']/android.support.v7.widget.RecyclerView[@index='0']/android.widget.RelativeLayout[@index='2']/android.widget.RelativeLayout[@index='0']/android.widget.TextView[@index='1']      text
    set global variable         ${NAME_OF_ARTIST}
    log to console      ${NAME_OF_ARTIST}


now compare the name on detail screen
    element text should be          com.libraryideas.freegalmusic:id/tvContentTitle         ${NameOfPlaylist}

now compare the name of album on detail screen
    element text should be          com.libraryideas.freegalmusic:id/tvContentTitle         ${NAME_OF_ALBUM}

now compare the name of artist on detail screen
    element text should be          com.libraryideas.freegalmusic:id/tvContentTitle         ${NAME_OF_ARTIST}


navigates to the home> wishlist screen
    click element   xpath=//android.widget.TextView[@text='WISHLIST']
    element should be visible       xpath=//android.widget.TextView[@text='Wishlist']

play a second song of list
    click element   xpath=//android.widget.RelativeLayout[@index= '2' ]
    ${abd} =     get element attribute     xpath=//android.widget.RelativeLayout[@index= '2' ]       text
    click element   xpath=//android.widget.RelativeLayout[3]*[@index= '2' ]
    ${abd}      get text    xpath=//android.widget.RelativeLayout[3]*[@index= '2' ]     text
    log to console      ${abd}



navigates to the detail screen of featured playlist
    sleep   5s
    #click element       com.libraryideas.freegalmusic:id/featuredPlaylistComponent/android.widget.RelativeLayout/android.widget.RelativeLayout/android.widget.FrameLayout/android.support.v7.widget.RecyclerView/android.widget.RelativeLayout[@index='1']

    #click element       xpath=//com.libraryideas.freegalmusic:id/featuredPlaylistComponent[1]*[@index='1']
    #click element       xpath=//com.libraryideas.freegalmusic:id/featuredPlaylistComponent[@index='1']*[@index= '1' ]
    #click element       xpath=//com.libraryideas.freegalmusic:id/featuredPlaylistComponent[@index='1']/android.widget.RelativeLayout[@index='0']/android.widget.RelativeLayout[@index='0']/android.widget.FrameLayout[@index='2']/android.support.v7.widget.RecyclerView[@index='0']/android.widget.RelativeLayout[@index='1']
    click element       xpath=//hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.LinearLayout/android.widget.FrameLayout[1]/android.widget.RelativeLayout/android.support.v4.view.ViewPager/android.widget.FrameLayout/android.widget.RelativeLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.RelativeLayout/android.widget.RelativeLayout[2]/android.widget.RelativeLayout/android.widget.RelativeLayout/android.widget.FrameLayout/android.support.v7.widget.RecyclerView/android.widget.RelativeLayout[2]/android.widget.RelativeLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.ImageView
    #click element       xpath=//com.libraryideas.freegalmusic:id/featuredPlaylistComponent[@index='1']/android.widget.RelativeLayout[@index='0']/android.support.v7.widget.RecyclerView[@index='0']/android.widget.FrameLayout[@index='2']/android.widget.RelativeLayout[@index='1']

navigates to the detail screen of featured album
    click element       xpath=//android.widget.RelativeLayout[@index='3']/android.widget.RelativeLayout[@index='0']/android.widget.RelativeLayout[@index='0']/android.widget.FrameLayout[@index='2']/android.support.v7.widget.RecyclerView[@index='0']/android.widget.RelativeLayout[@index='2']

navigates to the detail screen of featured artist
    sleep   4s
    click element       xpath=//android.widget.RelativeLayout[@index='7']/android.widget.RelativeLayout[@index='0']/android.widget.RelativeLayout[@index='0']/android.widget.FrameLayout[@index='2']/android.support.v7.widget.RecyclerView[@index='0']/android.widget.RelativeLayout[@index='2']



scroll to the featured album list
    scroll the list
    scroll the list

scroll to the featured songs list
    scroll the list
    scroll the list
    scroll the list

scroll to the featured music videos list
    scroll the list
    scroll the list
    scroll the list
    scroll the list

scroll to the featured artist list
    scroll the list
    scroll the list
    scroll the list
    scroll the list
    scroll the list
    scroll the list




back to the home screen> featured
    wait until element is visible       com.libraryideas.freegalmusic:id/rlBackLayout
    click element       com.libraryideas.freegalmusic:id/rlBackLayout

Tap on OK button of Limetmet popup
    click element   xpath=//android.widget.Button[@text='OK']


#abcdefr
#    : FOR     ${i}      IN             10
#    \    set global variable         ${i}
#    \    ${isL}     run keyword and return status  element should be visible       xpath=//android.support.v7.widget.RecyclerView/android.widget.RelativeLayout[@index='${i}']
#    \    run keyword if  '${isL}'=='True'     add one
#    \    run keyword if  '${isL}'=='False'    no operation
#    \    log to console     ${i}
#add one
#    ${i} =      evaluate        ${i}+1


scroll the list
    swipe by percent    70      40      70      4       1000
    sleep   7s

scroll the list up
    swipe by percent    70      30      70      80       1000
    sleep   7s

scroll to the top
    scroll the list up
    scroll the list up

select more option of the second song in playlist
    click element       xpath=//android.support.v7.widget.RecyclerView/android.widget.RelativeLayout[@index='1']/android.widget.RelativeLayout[@index='0']/android.widget.LinearLayout[@index='2']

tap on add to wishlist button
    click element       com.libraryideas.freegalmusic:id/tvAddtoWishlist

tap on remove from wishlist button
    click element       com.libraryideas.freegalmusic:id/tvRemove

first remove the songs and then add again
    tap on remove from wishlist button
    sleep  3s
    tap on ok button of song added/remove
    select more option of the second song in playlist
    tap on add to wishlist button

first add the songs and then remove again
    tap on add to wishlist button
    sleep   3s
    tap on ok button of song added/remove
    select more option of the second song in playlist
    tap on remove from wishlist button

add song in wishlist
    ${isSongavailable}     run keyword and return status  element should be visible        com.libraryideas.freegalmusic:id/tvAddtoWishlist
    run keyword if  '${isSongavailable}'=='True'     tap on add to wishlist button
    run keyword if  '${isSongavailable}'=='False'    first remove the songs and then add again

remove song from wishlist
    ${isSongavailable}     run keyword and return status  element should be visible        com.libraryideas.freegalmusic:id/tvRemove
    run keyword if  '${isSongavailable}'=='True'     tap on remove from wishlist button
    run keyword if  '${isSongavailable}'=='False'    first add the songs and then remove again

#for featured videos

first remove the video songs and then add again
    tap on remove from wishlist button
    sleep  3s
    tap on ok button of song added/remove
    tap that second video in list
    tap on add to wishlist button

first add the video songs and then remove again
    tap on add to wishlist button
    sleep   3s
    tap on ok button of song added/remove
    tap that second video in list
    tap on remove from wishlist button

add video song in wishlist
    ${isSongavailable}     run keyword and return status  element should be visible        com.libraryideas.freegalmusic:id/tvAddtoWishlist
    run keyword if  '${isSongavailable}'=='True'     tap on add to wishlist button
    run keyword if  '${isSongavailable}'=='False'    first remove the video songs and then add again

remove video song from wishlist
    ${isSongavailable}     run keyword and return status  element should be visible        com.libraryideas.freegalmusic:id/tvRemove
    run keyword if  '${isSongavailable}'=='True'     tap on remove from wishlist button
    run keyword if  '${isSongavailable}'=='False'    first add the video songs and then remove again




tap on Ok button of song added/remove
    sleep   3s
    click element       com.libraryideas.freegalmusic:id/tvOk

navigates to the back screen
    click element   com.libraryideas.freegalmusic:id/ibBack



verify the message when song added successfully in wishlist
    wait until element is visible       com.libraryideas.freegalmusic:id/rl_popup_root      15s
    element text should be          xpath=//android.widget.TextView[@text='Song successfully added to your wishlist.']        Song successfully added to your wishlist.


save text of that song
    ${songname}     get element attribute       com.libraryideas.freegalmusic:id/tvContentTitle         text
    set global variable         ${songname}

tap on viewwislit button
    click element       com.libraryideas.freegalmusic:id/tvViewWishlist


validate user navigates on right tab in wishlist section
    wait until page contains element        xpath=//android.widget.TextView[@text='WISHLIST']
    sleep   3s
    ${isenabled}        get element attribute          com.libraryideas.freegalmusic:id/rbSongs         checked
    should be equal as strings          ${isenabled}        ${tempcheckedstatus}
    ${element}     get line count       com.libraryideas.freegalmusic:id/recycler_view
    log to console      ${element}
    #${textofsong}       get element attribute       xpath=//android.support.v7.widget.RecyclerView[@index='2']/android.widget.RelativeLayout[@index='0']/android.widget.RelativeLayout[@index='0']/android.widget.RelativeLayout[@index='1']/android.widget.LinearLayout[@index='0']/android.widget.TextView[@index='0']        text
    #should be equal as strings          ${songname}     ${textofsong}

add button chnages into the remove button
    element text should be       com.libraryideas.freegalmusic:id/tvRemove      Remove from Wishlist

tap on the remove the song from playlist button
    click element       com.libraryideas.freegalmusic:id/tvRemove

read the name of the adding song
    ${SONG_NAME}         get element attribute       com.libraryideas.freegalmusic:id/tvContentTitle         text
    log to console          ${SONG_NAME}
    set global variable     ${SONG_NAME}


tap on add to streaming playlist button
    click element       com.libraryideas.freegalmusic:id/tvAddtoPlaylist
    sleep  2s

add song to streaming playlist
    click element       xpath=//android.widget.RelativeLayout[@index='1']


check the message when song is already added
    sleep   3s
    element text should be          xpath=//android.widget.TextView[@text='Song already on your playlist. (113)']       Song already on your playlist. (113)

create a new playlist
    click element       com.libraryideas.freegalmusic:id/tvCreateNewPlaylist

Verify the message of song added
    sleep       4s
    element text should be          xpath=//android.widget.TextView[@text='Song has been added to playlist']        Song has been added to playlist

tap on view playlist button
    click element       com.libraryideas.freegalmusic:id/tvViewWishlist

validate user lands to the playlist screen
    element should be visible       xpath=//android.widget.TextView[@text='Playlists']

open the first streaming playlist
    sleep   4s
    click element       xpath=//android.support.v7.widget.RecyclerView/android.widget.RelativeLayout[@index='0']

check the text of added song and compare with it
    sleep   3s
    element text should be      xpath=//android.support.v7.widget.RecyclerView/android.widget.RelativeLayout[@index='0']/android.widget.RelativeLayout[@index='0']/android.widget.RelativeLayout[@index='1']/android.widget.LinearLayout[@index='0']/android.widget.TextView[@index='0']        ${songname}

tap on the downlaod button
    click element           com.libraryideas.freegalmusic:id/tvDownload
    sleep   3s

tap on Ok button at download
    click element       xpath=//android.widget.Button[@text='OK']

verify the download is available for the song
    tap on the downlaod button
    ${ifalreadydoownloaded}     run keyword and return status       element should be visible       com.libraryideas.freegalmusic:id/alertTitle
    run keyword if          '${ifalreadydoownloaded}'=='True'            tap on Ok button at download
    run keyword if          '${ifalreadydoownloaded}'=='False'            wait for the download

wait for the download
    wait until page contains element        xpath=//android.widget.TextView[@text='Download in progress']       60s
    element text should be      xpath=//android.widget.TextView[@text='Download in progress']       Download in progress

verify the message of successfully download
    wait until page contains element            com.libraryideas.freegalmusic:id/tvDownloadSuccess      60s
    element text should be          com.libraryideas.freegalmusic:id/tvDownloadSuccess          Successfully Downloaded


tap on shuffle button
    click element       com.libraryideas.freegalmusic:id/tvShuffle

tap on the stream button
    click element       com.libraryideas.freegalmusic:id/btnStream

check the name of first song
    ${firstsonginplaylist}      get element attribute          xpath=//android.support.v7.widget.RecyclerView/android.widget.RelativeLayout[@index='0']/android.widget.RelativeLayout[@index='0']/android.widget.RelativeLayout[@index='1']/android.widget.LinearLayout[@index='0']/android.widget.TextView[@index='0']        text
    log to console      ${firstsonginplaylist}
    set global variable         ${firstsonginplaylist}


check the name of the song played on music player be same
    element text should be       xpath=//android.widget.FrameLayout[@index='1']/android.widget.FrameLayout[@index='0']/android.widget.FrameLayout[@index='0']/android.widget.RelativeLayout[@index='0']/android.widget.RelativeLayout[@index='0']/android.widget.LinearLayout[@index='2']/android.widget.TextView[@index='0']         ${firstsonginplaylist}

check the name of the song played on music player be different
    element should not contain text         xpath=//android.widget.FrameLayout[@index='1']/android.widget.FrameLayout[@index='0']/android.widget.FrameLayout[@index='0']/android.widget.RelativeLayout[@index='0']/android.widget.RelativeLayout[@index='0']/android.widget.LinearLayout[@index='2']/android.widget.TextView[@index='0']         ${firstsonginplaylist}

check the name of song and play it from featured song
    ${SONG_PLAYED_FEATUREDSONGS}      get element attribute          xpath=//android.widget.RelativeLayout[@index='4']/android.widget.RelativeLayout[@index='0']/android.widget.RelativeLayout[@index='0']/android.widget.FrameLayout[@index='2']/android.support.v7.widget.RecyclerView[@index='0']/android.widget.RelativeLayout[@index='0']/android.widget.RelativeLayout[@index='0']/android.widget.LinearLayout[@index='1']/android.widget.TextView[@index='0']        text
    log to console      ${SONG_PLAYED_FEATUREDSONGS}
    set global variable         ${SONG_PLAYED_FEATUREDSONGS}
    click element       xpath=//android.widget.RelativeLayout[@index='4']/android.widget.RelativeLayout[@index='0']/android.widget.RelativeLayout[@index='0']/android.widget.FrameLayout[@index='2']/android.support.v7.widget.RecyclerView[@index='0']/android.widget.RelativeLayout[@index='0']/android.widget.RelativeLayout[@index='0']/android.widget.LinearLayout[@index='1']/android.widget.TextView[@index='0']

check the name of the song played on music player be same as featured album
    element text should be       xpath=//android.widget.FrameLayout[@index='1']/android.widget.FrameLayout[@index='0']/android.widget.FrameLayout[@index='0']/android.widget.RelativeLayout[@index='0']/android.widget.RelativeLayout[@index='0']/android.widget.LinearLayout[@index='2']/android.widget.TextView[@index='0']         ${SONG_PLAYED_FEATUREDSONGS}

check the name of 3rd song and play it from featured song
    ${SONG_PLAYED_FEATUREDSONGS}      get element attribute          xpath=//android.widget.RelativeLayout[@index='4']/android.widget.RelativeLayout[@index='0']/android.widget.RelativeLayout[@index='0']/android.widget.FrameLayout[@index='2']/android.support.v7.widget.RecyclerView[@index='0']/android.widget.RelativeLayout[@index='2']/android.widget.RelativeLayout[@index='0']/android.widget.LinearLayout[@index='1']/android.widget.TextView[@index='0']        text
    log to console      ${SONG_PLAYED_FEATUREDSONGS}
    set global variable         ${SONG_PLAYED_FEATUREDSONGS}
    click element       xpath=//android.widget.RelativeLayout[@index='4']/android.widget.RelativeLayout[@index='0']/android.widget.RelativeLayout[@index='0']/android.widget.FrameLayout[@index='2']/android.support.v7.widget.RecyclerView[@index='0']/android.widget.RelativeLayout[@index='2']/android.widget.RelativeLayout[@index='0']/android.widget.LinearLayout[@index='1']/android.widget.TextView[@index='0']

compare the text of the first song of recently played with last played song
    element text should be       xpath=//android.widget.RelativeLayout[@index='0']/android.widget.RelativeLayout[@index='0']/android.widget.RelativeLayout[@index='0']/android.widget.FrameLayout[@index='2']/android.support.v7.widget.RecyclerView[@index='0']/android.widget.RelativeLayout[@index='0']/android.widget.RelativeLayout[@index='0']/android.widget.LinearLayout[@index='1']/android.widget.TextView[@index='0']         ${SONG_PLAYED_FEATUREDSONGS}


check the name of the second video in list
    ${NAME_OF_FEATURED_MUSIC_VIDEO}      get element attribute          xpath=//android.widget.RelativeLayout[@index='5']/android.widget.RelativeLayout[@index='0']/android.widget.RelativeLayout[@index='0']/android.widget.FrameLayout[@index='2']/android.support.v7.widget.RecyclerView[@index='0']/android.widget.RelativeLayout[@index='1']/android.widget.RelativeLayout[@index='0']/android.widget.LinearLayout[@index='1']/android.widget.TextView[@index='0']        text
    log to console      ${NAME_OF_FEATURED_MUSIC_VIDEO}
    set global variable         ${NAME_OF_FEATURED_MUSIC_VIDEO}

tap that second video in list
    click element       xpath=//android.widget.RelativeLayout[@index='5']/android.widget.RelativeLayout[@index='0']/android.widget.RelativeLayout[@index='0']/android.widget.FrameLayout[@index='2']/android.support.v7.widget.RecyclerView[@index='0']/android.widget.RelativeLayout[@index='1']/android.widget.RelativeLayout[@index='0']/android.widget.LinearLayout[@index='1']/android.widget.TextView[@index='0']


compare the name in action sheet
    element text should be      com.libraryideas.freegalmusic:id/tvContentTitle      ${NAME_OF_FEATURED_MUSIC_VIDEO}

verify the message when video added successfully in wishlist
    wait until element is visible       com.libraryideas.freegalmusic:id/rl_popup_root      15s
    element text should be          xpath=//android.widget.TextView[@text='Video successfully added to your wishlist.']        Video successfully added to your wishlist.

