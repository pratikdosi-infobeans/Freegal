*** Settings ***
Library     AppiumLibrary
Library     String
#Library     DateTime
Library     robot.libraries.DateTime

*** Variables ***
${NAMEOFPLAYLIST}

*** Keywords ***

validate user is on Browse tab
    sleep       5s
    click element       xpath=//android.widget.TextView[@text='Browse']
    wait until element is visible  xpath=//android.widget.TextView[@text='Browse']      35s
    sleep  3s


navigates to the detail screen of top album list
    click element       xpath=//android.widget.ScrollView[@index='0']/android.widget.RelativeLayout[@index='0']/android.widget.RelativeLayout[@index='0']/android.widget.RelativeLayout[@index='0']/android.widget.RelativeLayout[@index='0']/android.widget.TextView[@index='4']
    sleep   3s

check the top album list displayed
    element text should be          com.libraryideas.freegalmusic:id/tvHeaderTitle          Top Albums


navigates to the detail screen of any album
    sleep       4s
    click element           xpath=//android.support.v7.widget.RecyclerView[@index='3']/android.widget.RelativeLayout[@index='1']

get the text of trending playlist
    sleep   5s
    ${NAMEOFPLAYLIST}       get element attribute       xpath=//android.widget.RelativeLayout[@index='1']/android.widget.RelativeLayout[@index='0']/android.widget.LinearLayout[@index='0']/android.widget.RelativeLayout[@index='0']/android.support.v7.widget.RecyclerView[@index='3']/android.widget.RelativeLayout[@index='1']/android.widget.RelativeLayout[@index='0']/android.widget.RelativeLayout[@index='1']/android.widget.LinearLayout[@index='0']/android.widget.TextView[@index='0']      text
    set global variable         ${NAMEOFPLAYLIST}
    log to console      ${NAMEOFPLAYLIST}

now compare the name of playlist on detail screen
    element text should be          com.libraryideas.freegalmusic:id/tvContentTitle         ${NAMEOFPLAYLIST}


now get the name of top three song
