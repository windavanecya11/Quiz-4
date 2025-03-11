*** Settings ***
Library    AppiumLibrary

*** Variables ***
${USERNAME_FIELD}    xpath=//android.widget.EditText[@resource-id="username"]
${PASSWORD_FIELD}    xpath=//android.widget.EditText[@resource-id="password"]
${LOGIN_BUTTON}      xpath=//android.widget.Button[@text="Login"]

*** Keywords ***
Input Username
    [Arguments]    ${username}
    Input Text    ${USERNAME_FIELD}    ${username}

Input Password
    [Arguments]    ${password}
    Input Text    ${PASSWORD_FIELD}    ${password}

Click Login Button
    Click Element    ${LOGIN_BUTTON}

Verify Login Success
    Wait Until Element Is Visible    xpath=//android.widget.TextView[@text="Welcome"]