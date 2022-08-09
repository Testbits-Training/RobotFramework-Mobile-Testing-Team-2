*** Settings ***
Library           AppiumLibrary

*** Variables ***
${host}     http://localhost:4723/wd/hub
${platAndroid}      Android
#for code of device, open cmd and type: adb devices
${redmi9}       602c342e
${emulator}     emulator-5554

*** Test Cases ***

open_airasia
    [Tags]    airasia
    Open Application    ${host}    platformName=${platAndroid}    deviceName=${redmi9}    appPackage=com.airasia.mobile   appActivity=com.airasia.mobile.MainActivity2      autoGrantPermissions=true

open_camera
    [Tags]    camera
    Open Application    ${host}    platformName=${platAndroid}    deviceName=${redmi9}    appPackage=net.sourceforge.opencamera   appActivity=net.sourceforge.opencamera.MainActivity       autoGrantPermissions=true


#Write on terminal:  robot --include=airasia -d RobotReport --log airasia_TRACE --report airasia_report 00_OpenApplication.robot