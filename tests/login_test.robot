*** Settings ***
Resource    ../pages/login_page.robot
Test Setup    Open Application    http://127.0.0.1:4723/wd/hub    platformName=Android    deviceName=emulator-5554    automationName=UiAutomator2    appPackage=com.example.app    appActivity=.MainActivity
Test Teardown    Close Application

*** Test Cases ***
User Can Login Successfully
    [Documentation]    Menguji login dengan kredensial valid
    Input Username    testuser
    Input Password    password123
    Click Login Button
    Verify Login Success