*** Settings ***
Library           Selenium2Library

*** Test Cases ***
TC_Yahoo_CreateNewAccount
    Open Browser    https://www.yahoo.com/    Chrome
    Maximize Browser Window
    Sleep    2
    Click element    xpath://html/body/header/div[2]/div/div/div/div/div[2]/div/div[3]/div[1]/div/a
    Sleep    2
    Click element    xpath://html/body/div[1]/div[2]/div[1]/div[2]/div[2]/form/div[4]/p/a
    Sleep    2
    Input text    xpath://html/body/div[1]/div[2]/div[1]/div[2]/form/fieldset[1]/div/div[1]/input    Marina
    Sleep    2
    Input text    xpath://html/body/div[1]/div[2]/div[1]/div[2]/form/fieldset[1]/div/div[2]/input    Spirovska
    Sleep    2
    Input text    xpath://html/body/div[1]/div[2]/div[1]/div[2]/form/fieldset[2]/input    marina.spirovskaa
    Sleep    2
    Input text    xpath://html/body/div[1]/div[2]/div[1]/div[2]/form/fieldset[3]/input    marspir1234
    Sleep    2
    Click element    xpath://html/body/div[1]/div[2]/div[1]/div[2]/form/fieldset[3]/button
    Sleep    2
    Input text    xpath://html/body/div[1]/div[2]/div[1]/div[2]/form/div[4]/fieldset/input    1991
    Sleep    2
    Click element    xpath://html/body/div[1]/div[2]/div[1]/div[2]/form/div[6]/button
    Sleep    2
    Close Browser

TC_Hotmail_CreateNewAccount
    Open Browser    https://outlook.live.com/    Chrome
    Maximize Browser Window
    Sleep    2
    Click element    xpath://html/body/header/div/div/section/div/div[2]/a
    Sleep    2
    Input text    xpath://html/body/div[1]/div/div/div[2]/div/div[1]/div[3]/div/div[1]/div[5]/div/div/form/div/div[1]/fieldset/div[1]/div[3]/div[2]/div/input    marinaspirovskaa
    Sleep    2
    Click element    xpath://html/body/div[1]/div/div/div[2]/div/div[1]/div[3]/div/div[1]/div[5]/div/div/form/div/div[1]/div[2]/div/div/div/div[3]/input
    Sleep    2
    Input text    xpath://html/body/div[1]/div/div/div[2]/div/div[1]/div[3]/div/div[1]/div[5]/div/div/form/div[3]/div/input[2]    Outlook1234
    Sleep    2
    Click element    xpath://html/body/div[1]/div/div/div[2]/div/div[1]/div[3]/div/div[1]/div[5]/div/div/form/div[4]/div/label/input
    Sleep    2
    Click element    xpath://html/body/div[1]/div/div/div[2]/div/div[1]/div[3]/div/div[1]/div[5]/div/div/form/div[5]/div/label/input
    Sleep    2
    Click element    xpath://html/body/div[1]/div/div/div[2]/div/div[1]/div[3]/div/div[1]/div[5]/div/div/form/div[7]/div/div/div[2]/input
    Sleep    2
    Input text    xpath://html/body/div[1]/div/div/div[2]/div/div[1]/div[3]/div/div[1]/div[5]/div/div/form/div[1]/div[3]/div[1]/input    Marina
    Sleep    2
    Input text    xpath://html/body/div[1]/div/div/div[2]/div/div[1]/div[3]/div/div[1]/div[5]/div/div/form/div[1]/div[3]/div[2]/input    Spirovska
    Sleep    2
    Click element    xpath://html/body/div[1]/div/div/div[2]/div/div[1]/div[3]/div/div[1]/div[5]/div/div/form/div[2]/div/div/div[2]/input
    Sleep    2
    Select From List By Value    xpath://html/body/div[1]/div/div/div[2]/div/div[1]/div[3]/div/div[1]/div[5]/div/div/form/div/div[4]/div[3]/div[1]/select    3
    Select From List By Value    xpath://html/body/div[1]/div/div/div[2]/div/div[1]/div[3]/div/div[1]/div[5]/div/div/form/div/div[4]/div[3]/div[2]/select    30
    Input text    xpath://html/body/div[1]/div/div/div[2]/div/div[1]/div[3]/div/div[1]/div[5]/div/div/form/div/div[4]/div[3]/div[3]/input    1991
    Sleep    2
    Click element    xpath://html/body/div[1]/div/div/div[2]/div/div[1]/div[3]/div/div[1]/div[5]/div/div/form/div/div[6]/div/div/div[2]/input
    Sleep    2
    Close Browser

TC_GMail_CreateNewAccount
    Open Browser    https://accounts.google.com/    Chrome
    Maximize Browser Window
    Sleep    2
    Click element    xpath://html/body/div[1]/div[1]/div[2]/div/c-wiz/div/div[2]/div/div[2]/div/div[2]/div/div/div[1]/div/button/span
    Sleep    2
    Click element    xpath://html/body/div[1]/div[1]/div[2]/div/c-wiz/div/div[2]/div/div[2]/div/div[2]/div/div/div[2]/div/ul/li[1]/span[2]
    Sleep    2
    Input text    xpath://html/body/div[1]/div[1]/div[2]/div[1]/div[2]/div/div/div[2]/div/div[1]/div/form/span/section/div/div/div[1]/div[1]/div[1]/div/div[1]/div/div[1]/input    Anna
    Input text    xpath://html/body/div[1]/div[1]/div[2]/div[1]/div[2]/div/div/div[2]/div/div[1]/div/form/span/section/div/div/div[1]/div[1]/div[2]/div/div[1]/div/div[1]/input    Manson
    Sleep    2
    Input text    xpath://html/body/div[1]/div[1]/div[2]/div[1]/div[2]/div/div/div[2]/div/div[1]/div/form/span/section/div/div/div[2]/div[1]/div/div[1]/div/div[1]/input    annamansonanna
    Click element    xpath://html/body/div[1]/div[1]/div[2]/div[1]/div[2]/div/div/div[2]/div/div[1]/div/form/span/section/div/div/div[3]/div[3]/div/div[1]/div/div/div[1]/div/input
    Input text    xpath://html/body/div[1]/div[1]/div[2]/div[1]/div[2]/div/div/div[2]/div/div[1]/div/form/span/section/div/div/div[3]/div[1]/div/div/div[1]/div/div[1]/div/div[1]/input    *manson1234*
    Input text    xpath://html/body/div[1]/div[1]/div[2]/div[1]/div[2]/div/div/div[2]/div/div[1]/div/form/span/section/div/div/div[3]/div[1]/div/div/div[2]/div/div[1]/div/div[1]/input    *manson1234*
    Sleep    2
    Click element    xpath://html/body/div[1]/div[1]/div[2]/div[1]/div[2]/div/div/div[2]/div/div[2]/div/div[1]/div/div/button/span
    Sleep    2
    Close Browser
