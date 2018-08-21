*** Settings ***
Library  AppiumLibrary
Library  String
Resource    ../Resources/PO/MyMusicScreen.robot
Resource   ../Resources/PO/LoginScreen.robot
Resource    ../Resources/BasicApp.robot
Resource   ../Resources/PO/BrowseScreen.robot

*** Keywords ***

launch application1
      Open Application  http://localhost:4723/wd/hub
             ...  platformName=Android
             ...  platformVersion=6.0.1
             ...  deviceName=Nexus5
             ...  udid=0bb3b23a43e67009

             ...  app=com.libraryideas.freegalmusic
             #...  noReset= true
             ...  appActivity=com.libraryideas.freegalmusic.activities.SplashActivity
             #...    appActivity=io.ionic.fb4.MainActivity
            # ...  appPacakage=com.meethook.meethookandroid
Close app1
    Close Application


launch and login in app
    launch application1
    Navigates to the location screen
    Enter the location ID
    Tap on the Continue button
    Select "m68"
    Enter login credentials for login


Logout and close app
    tap on settings button
    tap on logout button
    close app1

Wait till user navigates to the profile
    wait for profile view
