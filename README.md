# Mobile Testing with Robot Framework

You can refer to 'Mobile Testing with Robot Framework.pdf' for more detail

## Prerequisite:


1. Java JDK 8 : https://www.oracle.com/java/technologies/javase/javase8-archive-downloads.html.
2. Android Studio: https://developer.android.com/studio
3. Appium : https://github.com/appium/appium-desktop/releases/tag/v1.22.3-4
4. Node.js : https://nodejs.org/en/download/
5. Install Robotframework on command prompt:
   `pip install robotframework`
6. Install Appium Library on command prompt:
   `pip install robotframework-appiumlibrary`
   
   `Note: If you have install selenium ver 4. You need to uninstall it because appium only compatible with selenium 3.140. You just unistall selenium and after that just install appium. When appium is installed, it will install selenium 3.140 automatically `
   
7. Vysor: https://www.vysor.io/
8. ADB Driver: https://adb.clockworkmod.com/ 

### Robot Framework Documentation contains:

1. Installation
2. Setup Project
3. Open Apllication Testing
4. Input and Output Validation Testing 

You can refer to 'Mobile Testing with Robot Framework.pdf' for tutorial and this projcet use simplcalc.robot script file as tutorial testing

For more documentation about Appiu Keywords, visit http://serhatbolsu.github.io/robotframework-appiumlibrary/AppiumLibrary.html#Input%20Value

## Note 
If you get error when open emulator due to HAX installation, you can refer https://stackoverflow.com/questions/32795704/failed-to-install-haxm-during-android-studio-installation

## List of Features Testing for Simple Calculator and Calendar Apps

1. Simple Calculator (on simplcalc_test.robot):
   - Additional Operation Test
2. Calendar (on calendar_test.robot)
   - Add Note to Do
