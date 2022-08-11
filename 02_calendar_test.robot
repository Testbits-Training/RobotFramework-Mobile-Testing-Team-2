*** Settings ***
Library           AppiumLibrary

*** Variables ***
${host}     http://localhost:4723/wd/hub
${platAndroid}      Android
#for code of device, open cmd and type: adb devices
${redmi9}       602c342e
${emulator}     emulator-5554

*** Test Cases ***

open_app
    [Tags]    calendar
    open_calendar
    click element       id=pl.mb.calendar:id/mNewEvent
    wait until page contains element    id=pl.mb.calendar:id/action_bar_root
    input text      id=pl.mb.calendar:id/editText2      testing-testing
    click element   id=pl.mb.calendar:id/mAdd




*** Keywords ***
open_calendar
    Open Application    ${host}    platformName=${platAndroid}    deviceName=${redmi9}    appPackage=pl.mb.calendar    appActivity=pl.mb.calendar.FullActivity      autoGrantPermissions=true
    wait until page contains element    id=pl.mb.calendar:id/action_bar_root
    sleep   5


#Write at terminal:  robot --include=calendar -d RobotOutput --output Calendar_output --log Calendar_log --report Calendar_report 02_calendar_test.robot