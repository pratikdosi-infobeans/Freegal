*** Settings ***
Library     AppiumLibrary
Library     String
#Library     DateTime
Library     robot.libraries.DateTime

*** Variables ***
${Random_playlistname}    "abc"
${Letters}      abcdefghijkl
${Search_Keyword}       "bollywood"
${Random_playlistnameagain}     "cde"
${playlistavailable}      xpath=//android.support.v7.widget.RecyclerView/android.widget.RelativeLayout[@index='0']/android.widget.RelativeLayout[@index='0']/android.widget.LinearLayout[@index='2']
@{yesplaylistavailable}      xpath=//android.support.v7.widget.RecyclerView[@index='2']
${Random_description}       "qewr"
${textlength}           10
${SongAvailable}        xpath=//''


*** Keywords ***


navigates to the my music screen
    sleep   3s
    click element       xpath=//android.widget.TextView[@text='My Music']
    sleep   5s
    #click element       xpath=//android.widget.FrameLayout[@index= '3']
    #sleep   7s
    wait until element is visible   xpath=//android.widget.TextView[@text='My Music']

verify the different tabsa vailable on mymusic screen
    element name should be      xpath=//android.widget.TextView[@text='Playlists']      Playlists
    element name should be      xpath=//android.widget.TextView[@text='MUSIC VIDEOS']      MUSIC VIDEOS
    element name should be      xpath=//android.widget.TextView[@text='Audiobooks']      Audiobooks
    element name should be      xpath=//android.widget.TextView[@text='Songs']      Songs


navigates to the Mymusci> playlist section
    click element   xpath=//android.widget.TextView[@text='Playlists']
    sleep  10s


verify the streaming tab is by default selected
    element attribute should match  com.libraryideas.freegalmusic:id/rbStreamingPlaylist        checked     true


navigates to the download tab
    click element   com.libraryideas.freegalmusic:id/rbDownloadPlaylist

verify that user lands on download tab
    element text should be          xpath=//android.widget.LinearLayout/android.widget.TextView[@text='My Download Playlists']      My Download Playlists

# --------Not in use after design chnages-----
#create a new playlist
#    ${is_createbutton_visible} =  run keyword and return status     element should be visible   com.libraryideas.freegalmusic:id/tvCreatePlaylist
#    log to console  ${is_createbutton_visible}
#    sleep   7s
#    run keyword if      '${is_createbutton_visible}'=='True'    click element  com.libraryideas.freegalmusic:id/tvCreatePlaylist
#    run keyword if      '${is_createbutton_visible}'=='False'   swipe        532      440      473      874
#    wait until element is visible   com.libraryideas.freegalmusic:id/tvCreatePlaylist       10s

check the name and decription fields
    #element text should be     xapth=//android.widget.RelativeLayout/android.widget.LinearLayout[@index='1']/android.widget.TextView[@index='0']      Name:
    element text should be      com.libraryideas.freegalmusic:id/lblDescription     Description

check the placeholder text on Name field
    element text should be          xpath=//android.widget.EditText[@text='Name your playlist']     Name your playlist

check the place holder text on description field
    element text should be          xpath=//android.widget.EditText[@text='Enter description here...(Max 250 characters)']     Enter description here...(Max 250 characters)


tap on the create playlist button
    click element   com.libraryideas.freegalmusic:id/tvCreatePlaylist


tap on the my streaming playlist button
    click element   com.libraryideas.freegalmusic:id/tvStreamingPlaylist



tap on the my download playlist button
    click element   com.libraryideas.freegalmusic:id/tvDownloadPlaylist

tap on cancel button create new playlist
    click element   com.libraryideas.freegalmusic:id/tvCancel


tap on the create button
    click element   com.libraryideas.freegalmusic:id/tvCreate
    #wait until element is visible   com.libraryideas.freegalmusic:id/tvPlaylistName        10s
verify the error message
    element text should be      com.libraryideas.freegalmusic:id/tvErrorMessage     *Name cannot be empty.

tap on cancel button
    sleep  2s
    click element   com.libraryideas.freegalmusic:id/tvCancel


name your playlist field
    click element   com.libraryideas.freegalmusic:id/edtPlaylistName
    ${Random_playlistname}    generate random string   7         ${Letters}
    set global variable   ${Random_playlistname}
    input text      com.libraryideas.freegalmusic:id/edtPlaylistName        ${Random_playlistname}
    log to console  ${Random_playlistname}


enter description in field
    click element       com.libraryideas.freegalmusic:id/edtPlaylistDesc
    ${Random_description}    generate random string   ${textlength}         ${Letters}
    set global variable     ${textlength}

    set global variable   ${Random_description}
    input text      com.libraryideas.freegalmusic:id/edtPlaylistDesc        ${Random_description}
    log to console  ${Random_description}

count of entred text
    ${enteredtextcount}       get text        com.libraryideas.freegalmusic:id/lblTextCount
    log to console      ${enteredtextcount}
    ${actualenteredtextcount}      fetch from left     ${enteredtextcount}       /
    log to console  ${actualenteredtextcount}
    log to console      hi
    log to console      ${textlength}
    should be equal as strings          ${actualenteredtextcount}      ${textlength}





verify the created playlist name
    sleep   10s
    ${tempdtata}=    get element attribute      com.libraryideas.freegalmusic:id/tvPlaylistName     text
    log to console      ${tempdtata}
    log to console  ${Random_playlistname}
    #wait until element is visible       com.libraryideas.freegalmusic:id/tvCreatedNewPlaylist           10s
    #element should contain text      ${tempdtata}      ${Random_playlistname}
    element text should be      ${tempdtata}        ${Random_playlistname}
    #log to console  ${Random_playlistname}
    #log to console  ${tempdtata}

tap on OK button
    sleep  7s
    click element   com.libraryideas.freegalmusic:id/tvOk

tap on viewplaylist screen
    click element   com.libraryideas.freegalmusic:id/tvViewPlaylist


check the name of the first streaming playlist
    element text should be   xpath=//android.support.v7.widget.RecyclerView/android.widget.RelativeLayout[@index='0']/android.widget.RelativeLayout[@index='0']/android.widget.RelativeLayout[@index='1']/android.widget.LinearLayout[@index='0']/android.widget.TextView[@index='0']       ${Random_playlistname}

Select more option of the first streaming playlist in list
    click element   xpath=//android.support.v7.widget.RecyclerView/android.widget.RelativeLayout[@index='0']/android.widget.RelativeLayout[@index='0']/android.widget.LinearLayout[@index='2']

Verify the options available for more option in streaming playlist
    element text should be      com.libraryideas.freegalmusic:id/tvAddMusic     Add Music
    element text should be      com.libraryideas.freegalmusic:id/tvSharePlaylist        Share to Library
    element text should be      com.libraryideas.freegalmusic:id/tvRenamePlaylist       Rename Playlist
    element text should be      com.libraryideas.freegalmusic:id/tvDeletePlaylist       Delete Playlist

Verify the options available for more option in download playlist
    element text should be      com.libraryideas.freegalmusic:id/tvRenamePlaylist       Rename Playlist
    element text should be      com.libraryideas.freegalmusic:id/tvDeletePlaylist       Delete Playlist



Select more option of the first download playlist in list
    click element   xpath=//android.support.v7.widget.RecyclerView/android.widget.RelativeLayout[@index='0']/android.widget.RelativeLayout[@index='0']/android.widget.LinearLayout[@index='2']



Cancel the popup screen of more streaming playlist option
    click element       com.libraryideas.freegalmusic:id/ivCancel

tap on the 'add music' button
    click element   com.libraryideas.freegalmusic:id/tvAddMusic

wait till user navigates to serach tab
    wait until element is visible   xpath=//android.widget.TextView[@text='Search']

tap on search field and input text
    sleep  7s
    #click element   com.libraryideas.freegalmusic:id/edtSearchBar
    #click element   xpath=//android.widget.EditText[@text='Search Music...']
    input text      xpath=//android.widget.EditText[@text='Search Music...']       ${Search_Keyword}
    sleep   7s
    #go back

add a song into streaming playlist
    click element       xpath=//xpath=//android.support.v7.widget.RecyclerView/android.widget.RelativeLayout[@index='0']/android.widget.RelativeLayout[@index='0']/android.widget.LinearLayout[@index='2']
    click element       com.libraryideas.freegalmusic:id/tvAddtoPlaylist
    click element       xpath=//android.widget.LinearLayout/android.support.v7.widget.RecyclerView[@index='0']/android.widget.RelativeLayout[@index='0']



tap on the "rename playlist" screen
    click element   com.libraryideas.freegalmusic:id/tvRenamePlaylist

navigates and clear the existing name of playlist
    clear text      com.libraryideas.freegalmusic:id/edtPlaylistName


name your playlist again
    click element   com.libraryideas.freegalmusic:id/edtPlaylistName
    ${Random_playlistnameagain}    generate random string   7         ${Letters}
    set global variable   ${Random_playlistnameagain}
    input text      com.libraryideas.freegalmusic:id/edtPlaylistName        ${Random_playlistnameagain}
    log to console  ${Random_playlistnameagain}

tap on confirm button
    click element       com.libraryideas.freegalmusic:id/tvConfirm


check the name of the first streaming playlist and compare with rename text
    element text should be   xpath=//android.support.v7.widget.RecyclerView/android.widget.RelativeLayout[@index='0']/android.widget.RelativeLayout[@index='0']/android.widget.RelativeLayout[@index='1']/android.widget.LinearLayout[@index='0']/android.widget.TextView[@index='0']       ${Random_playlistnameagain}


wait till popup appears
    wait until element is visible       com.libraryideas.freegalmusic:id/rl_popup_root

compare text with the new playlist name
    element text should be    com.libraryideas.freegalmusic:id/tvPlaylistName       ${Random_playlistnameagain}


tap on delete a playlist option
    ${deletedLibrary}       get element attribute       com.libraryideas.freegalmusic:id/tvContentTitle    text
    log to console      ${deletedlibrary}
    click element       com.libraryideas.freegalmusic:id/tvDeletePlaylist

delete a streaming/download plalist
    click element       com.libraryideas.freegalmusic:id/tvDelete

#validate the message of deleting a playlist displayed
 #   get element attribute       xpath=//android.support.v7.widget.RecyclerView/android.widget.RelativeLayout[@index='0']/android.widget.RelativeLayout[@index='0']/android.widget.RelativeLayout[@index='1']/android.widget.LinearLayout[@index='0']/android.widget.TextView[@index='0']        text


tap on streaming playlist button
    click element       com.libraryideas.freegalmusic:id/rbStreamingPlaylist

tap on downloaded playlist button
    click element       com.libraryideas.freegalmusic:id/rbDownloadPlaylist


delete
    select more option of the first streaming playlist in list
    tap on delete a playlist option
    delete a streaming/download plalist
    tap on OK button
    sleep  7s


verify the text when list is empty
    element text should be

delete and recall
    delete
    delete the full


check background text when streaming list is empty
    element text should be      com.libraryideas.freegalmusic:id/tvNoPlaylistAvailable      Your created streaming playlists will appear here.

check background text when downloaded list is empty
    element text should be      com.libraryideas.freegalmusic:id/tvNoPlaylistAvailable      Your created download playlists will appear here.


delete the full
    ${isLibavailable}     run keyword and return status  element should be visible       ${playlistavailable}
    run keyword if  '${isLibavailable}'=='True'     delete and recall
    run keyword if  '${isLibavailable}'=='False'    no operation

tap on the help screen
    click element   com.libraryideas.freegalmusic:id/ivNeedHelp

verify the text available on help screen of playlist
    element text should be          com.libraryideas.freegalmusic:id/tvTitle        My Music (Playlists)
    #should be equal as strings        xpath=//android.widget.TextView[@index='1']      Create new playlists or view the playlists that you have already created.

tap on got it button
    click element       com.libraryideas.freegalmusic:id/btnGotIt



#---------------#

delete the all songs from streaming plalist
    ${isLibavailable}     run keyword and return status  element should be visible       ${playlistavailable}
    run keyword if  '${isLibavailable}'=='True'     delete and recall
    run keyword if  '${isLibavailable}'=='False'    no operation
