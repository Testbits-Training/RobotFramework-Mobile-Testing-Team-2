*** Settings ***
Library           AppiumLibrary

*** Variables ***
${host}     http://localhost:4723/wd/hub
${platAndroid}      Android
#for code of device, open cmd and type: adb devices
${redmi9}       602c342e
${emulator}     emulator-5554

*** Test Cases ***

open_calculator
    [Tags]    calc
    Open Application    ${host}    platformName=${platAndroid}    deviceName=${redmi9}     appPackage=com.everydaycalculation.casiocalculator   appActivity=com.everydaycalculation.casiocalculator.Basic     autoGrantPermissions=true
    wait until page contains element    id=com.everydaycalculation.casiocalculator:id/mainLayout

open_camera
    [Tags]    camera
    Open Application    ${host}    platformName=${platAndroid}    deviceName=${redmi9}    appPackage=net.sourceforge.opencamera   appActivity=net.sourceforge.opencamera.MainActivity       autoGrantPermissions=true


#Write on terminal:  robot --include=camera -d RobotReport --log calc_TRACE --report calc_report 00_OpenApplication.robot
