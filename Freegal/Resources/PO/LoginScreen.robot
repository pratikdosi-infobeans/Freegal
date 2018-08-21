*** Settings ***
Library     AppiumLibrary
Library     String
#Library     DateTime
Library     robot.libraries.DateTime

*** Variables ***
${location _ID}   37406
${username}         mukesh.mansane@infobeans.com
${password}         infobeans



*** Keywords ***

Navigates to the location screen
    wait until element is visible  com.libraryideas.freegalmusic:id/ivFreegalIcon     30s
    #swipe by percent    30      70      30      20


Enter the location ID
    click element   com.libraryideas.freegalmusic:id/edtLocation
    input text   com.libraryideas.freegalmusic:id/edtLocation      ${location _ID}

Tap on the Continue button
     click element     com.libraryideas.freegalmusic:id/btnContinue

Select "m68"
    sleep   7s
    click element       xpath=//android.widget.TextView[@text= "m68 Interactive"]

Enter email Id
    click element       com.libraryideas.freegalmusic:id/edtUserId
    input text      com.libraryideas.freegalmusic:id/edtUserId      ${username}
    hide keyboard

Enter password
        click element       com.libraryideas.freegalmusic:id/edtPin
        input text          com.libraryideas.freegalmusic:id/edtPin         ${password}
        #click element      xpath=//android.widget.EditText[@index='1']
        hide keyboard

check the limit met popup available
    page should contain element     com.libraryideas.freegalmusic:id/parentPanel

Tap on login button
        click element       com.libraryideas.freegalmusic:id/btnLogin
        sleep   10s
        ${LimitMetpopup}     run keyword and return status       check the limit met popup available
        run keyword if      '${LimitMetpopup}'=='True'    Tap on OK button of Limetmet popup
        #run keyword if      '${LimitMetpopup}'=='False'    ${ba}
        wait until element is visible   xpath=//android.widget.TextView[@text='Home']       30s


tap on settings button
    sleep   3s
    element should be visible  com.libraryideas.freegalmusic:id/ivSettings
    click element   com.libraryideas.freegalmusic:id/ivSettings

tap on logout button
    sleep   7s
    swipe by percent        50      90      50      20      1000
    click element       com.libraryideas.freegalmusic:id/tvLogout


check add button is visisble
    page should contain element     com.meethook.meethookandroid:id/btnCalendarEvent
