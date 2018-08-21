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

name your playlist from home
    name your playlist field

tap on create playlist button at home
    tap on the create button

