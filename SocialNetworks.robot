*** Settings ***
Library           Selenium2Library

*** Test Cases ***
TC_FB_CreatingNewAccount
    Open Browser    https://www.facebook.com/    Chrome
    Maximize Browser Window
    Sleep    2
    Click element    xpath://html/body/div[1]/div[1]/div[1]/div/div/div/div[2]/div/div[1]/form/div[5]/a
    Sleep    2
    Input text    xpath://html/body/div[3]/div[2]/div/div/div[2]/div/div/div[1]/form/div[1]/div[1]/div[1]/div[1]/div/input    Marina
    Sleep    2
    Input text    xpath://html/body/div[3]/div[2]/div/div/div[2]/div/div/div[1]/form/div[1]/div[1]/div[1]/div[2]/div/div[1]/input    Spirovska
    Sleep    2
    Input text    xpath://html/body/div[3]/div[2]/div/div/div[2]/div/div/div[1]/form/div[1]/div[2]/div/div[1]/input    marinaspirovskaaa@gmail.com
    Sleep    2
    Input text    xpath://html/body/div[3]/div[2]/div/div/div[2]/div/div/div[1]/form/div[1]/div[3]/div/div/div[1]/input    marinaspirovskaaa@gmail.com
    Sleep    2
    Input text    xpath://html/body/div[3]/div[2]/div/div/div[2]/div/div/div[1]/form/div[1]/div[4]/div/div[1]/input    Jessiejessie
    Sleep    2
    Select From List By Value    xpath://html/body/div[3]/div[2]/div/div/div[2]/div/div/div[1]/form/div[1]/div[5]/div[2]/span/span/select[1]    9
    Sleep    2
    Select From List By Value    xpath://html/body/div[3]/div[2]/div/div/div[2]/div/div/div[1]/form/div[1]/div[5]/div[2]/span/span/select[2]    30
    Select From List By Value    xpath://html/body/div[3]/div[2]/div/div/div[2]/div/div/div[1]/form/div[1]/div[5]/div[2]/span/span/select[3]    2000
    Sleep    2
    Click button    xpath://html/body/div[3]/div[2]/div/div/div[2]/div/div/div[1]/form/div[1]/div[7]/span/span[1]/input
    Sleep    2
    Click element    xpath://html/body/div[3]/div[2]/div/div/div[2]/div/div/div[1]/form/div[1]/div[11]/button
    Sleep    2

TC_FB_LoginWitnWrongPassword
    Open Browser    https://www.facebook.com/    Chrome
    Maximize Browser Window
    Set Selenium Speed    1 second
    Input text    id=email    marinabitola.ms@gmail.com
    Input password    id=pass    123456789
    Click button    name=login

TC_IG_CreateNewAccount
    Sleep    2    Chrome
    Close Browser
    Sleep    2
    Click element    xpath://html/body/div[2]/div/div/div/div[1]/div/div/div/div[1]/section/main/article/div[2]/div[2]/div/p/a/span
    Sleep    2
    Input text    xpath://html/body/div[2]/div/div/div/div[1]/div/div/div/div[1]/section/main/div/div/div[1]/div[2]/form/div[3]/div/label/input    marinaspirovskaa@gmail.com
    Sleep    2
    Input text    xpath://html/body/div[2]/div/div/div/div[1]/div/div/div/div[1]/section/main/div/div/div[1]/div[2]/form/div[4]/div/label/input    MarinaInstagram
    Sleep    2
    Input text    xpath://html/body/div[2]/div/div/div/div[1]/div/div/div/div[1]/section/main/div/div/div[1]/div[2]/form/div[5]/div/label/input    MarinaSpirovskaa
    Sleep    2
    Input text    xpath://html/body/div[2]/div/div/div/div[1]/div/div/div/div[1]/section/main/div/div/div[1]/div[2]/form/div[6]/div/label/input    1234mar
    Sleep    2
    Click element    xpath://html/body/div[2]/div/div/div/div[1]/div/div/div/div[1]/section/main/div/div/div[1]/div[2]/form/div[7]/div
    Sleep    2
    Select From List By Value    xpath://html/body/div[2]/div/div/div/div[1]/div/div/div/div[1]/section/main/div/div/div[1]/div/div[4]/div/div/span/span[1]/select    3
    Select From List By Value    xpath://html/body/div[2]/div/div/div/div[1]/div/div/div/div[1]/section/main/div/div/div[1]/div/div[4]/div/div/span/span[2]/select    30
    Select From List By Value    xpath://html/body/div[2]/div/div/div/div[1]/div/div/div/div[1]/section/main/div/div/div[1]/div/div[4]/div/div/span/span[3]/select    1991
    Click element    xpath://html/body/div[2]/div/div/div/div[1]/div/div/div/div[1]/section/main/div/div/div[1]/div/div[6]
    Sleep    2
    Close Browser

TC_LinkedIn_Create New Account
    Open Browser    https://www.linkedin.com/    Chrome
    Maximize Browser Window
    Sleep    2
    Click element    xpath://html/body/nav/div/a[1]
    Input text    xpath://html/body/div[1]/main/form/section/div[2]/input    marinaspirovskaa@hotmail.com
    Input text    xpath://html/body/div[1]/main/form/section/div[2]/div/input    marinaspirovska
    Sleep    2
    Click element    xpath://html/body/div[1]/main/form/section/button
    Input text    xpath://html/body/div[1]/main/form/section/div[1]/input[1]    Alisha
    Input text    xpath://html/body/div[1]/main/form/section/div[1]/input[2]    Cooper
    Click element    xpath://html/body/div[1]/main/form/section/button
    Sleep    2
    Click element    xpath://*[@id="register-verification-phone-number"]    76888999

TC_Twitter_CreateNewAccount
    Open Browser    https://twitter.com/    Chrome
    Maximize Browser Window
    Sleep    2
    Click element    xpath://html/body/div[1]/div/div/div[1]/div/div[1]/div/div/div/div/div[2]/div/div/div[2]/a/div
    Sleep    2
    Click element    xpath://html/body/div[1]/div/div/div[1]/div[2]/div/div/div/div/div/div[2]/div[2]/div/div/div[2]/div[2]/div/div/div/div[5]
    Input text    xpath://html/body/div[1]/div/div/div[1]/div[2]/div/div/div/div/div/div[2]/div[2]/div/div/div[2]/div[2]/div[1]/div/div[2]/div[1]/label/div/div[2]/div/input    Marina
    Input text    xpath://html/body/div[1]/div/div/div[1]/div[2]/div/div/div/div/div/div[2]/div[2]/div/div/div[2]/div[2]/div[1]/div/div[2]/div[2]/label/div/div[2]/div/input    +38976999888
    Select From List By Value    xpath://html/body/div[1]/div/div/div[1]/div[2]/div/div/div/div/div/div[2]/div[2]/div/div/div[2]/div[2]/div[1]/div/div[2]/div[4]/div[3]/div/div[1]/select    3
    Select From List By Value    xpath://html/body/div[1]/div/div/div[1]/div[2]/div/div/div/div/div/div[2]/div[2]/div/div/div[2]/div[2]/div[1]/div/div[2]/div[4]/div[3]/div/div[2]/select    30
    Select From List By Value    xpath://html/body/div[1]/div/div/div[1]/div[2]/div/div/div/div/div/div[2]/div[2]/div/div/div[2]/div[2]/div[1]/div/div[2]/div[4]/div[3]/div/div[3]/select    1991
    Sleep    2
    Click Element    xpath://html/body/div[1]/div/div/div[1]/div[2]/div/div/div/div/div/div[2]/div[2]/div/div/div[2]/div[2]/div[2]/div/div/div/div
    Click Element    xpath://*[@id="layers"]/div[2]/div/div/div/div/div/div[2]/div[2]/div/div/div[2]/div[2]/div[1]/div/div/label/div[2]/label/div/div/input
    Sleep    2
    Click Element    xpath://html/body/div[1]/div/div/div[1]/div[2]/div/div/div/div/div/div[2]/div[2]/div/div/div[2]/div[2]/div[2]/div/div/div/div
    Sleep    2
    Click element    xpath://html/body/div[1]/div/div/div[1]/div[2]/div/div/div/div/div/div[2]/div[2]/div/div/div[2]/div[2]/div[2]/div/div/div[2]/div
    Sleep    2
    Close Browser

TC_TikTok_Create NewAccount
    Open Browser    https://www.tiktok.com/    Chrome
    Maximize Browser Window
    Sleep    2
    Click element    Sign up
    Sleep    2
    Click element    xpath://html/body/div[8]/div[3]/div/div/div[1]/div[2]/a/span
    Sleep    2
    Click element    xpath://html/body/div[8]/div[3]/div/div/div[1]/div[1]/div/div/div[2]/a/div
    Sleep    2
    Select From List By Value    xpath://html/body/div[8]/div[3]/div/div/div[1]/div[1]/div[2]/form/div[2]/div[1]    March
