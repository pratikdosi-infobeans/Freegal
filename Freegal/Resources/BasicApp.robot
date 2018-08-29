*** Settings ***
Library  AppiumLibrary
Library  String

Resource    ../Resources/PO/HomeScreen.robot
Resource    ../Resources/PO/MyMusicScreen.robot
Resource  ../Resources/BasicApp.robot
Resource   ../Resources/PO/LoginScreen.robot


*** Keywords ***

Enter login credentials for login
    Enter email Id
    Enter password
    Tap on login button

name your streaming playlist
    name your playlist field

tap on create playlist button at popup
    tap on the create button

#----

tap at viewwislit button in popup
    click element       com.libraryideas.freegalmusic:id/tvViewWishlist

scroll the list
    swipe by percent    70      40      70      4       1000
    sleep   7s

scroll the list up
    swipe by percent    70      30      70      80       1000
    sleep   7s

scroll to the top
    scroll the list up
    scroll the list up

navigates to the back screen
    click element   com.libraryideas.freegalmusic:id/ibBack

tap on the stream button
    click element       com.libraryideas.freegalmusic:id/btnStream

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

tap on shuffle button
    click element       com.libraryideas.freegalmusic:id/tvShuffle
