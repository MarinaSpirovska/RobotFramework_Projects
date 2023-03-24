*** Settings ***
Library           Selenium2Library

*** Test Cases ***
Starbucks
    Open Browser    https://www.starbucks.com/    Chrome
    Maximize Browser Window
    Sleep    1
    Click Element    xpath://html/body/div[2]/div[2]/div/footer/nav/div/div[10]/ul/li[2]/a
    Sleep    1
    Click Element    xpath://html/body/div[4]/div[2]/div[1]/div/div[2]/div[1]/div/a
    Sleep    2
    Input text    name=place    Thessaloniki Greece
    Sleep    1
    Click Element    class=button___vvJBH
    Sleep    2
    Click Element    xpath://html/body/div[2]/div/div[3]/main/div/div[2]/section/div[1]/div/article[1]/button
    Sleep    2
    Click Button    Confirm Store
    Sleep    3
    Click Button    See the menu
    Sleep    3
    Scroll Element Into View    xpath://html/body/div[2]/div/div[3]/main/div[2]/div/section[1]/div/div[7]/div/a
    Sleep    3
    Click Link    Cold Coffees
    Sleep    3
    Scroll Element Into View    xpath://html/body/div[2]/div/div[3]/main/div[2]/div/section[4]/div/div[3]/div/a
    Sleep    3
    Click Link    Iced Espresso
    Sleep    3
    Scroll Element Into View    xpath://html/body/div[2]/div/div[3]/main/div[3]/div/div[1]/div[2]/div/div[4]/div
    Sleep    3
    Select From List By Index    xpath://html/body/div[2]/div/div[3]/main/div[3]/div/div[1]/div[1]/div[1]/div[1]/select    3
    Sleep    3
    Click Button    Add to Order
    Sleep    3
    Click Button    1
    Sleep    3
    Click Element    xpath://html/body/div[2]/div/div[2]/main/div[2]/div[1]/div/div/div[1]/div/div/div[2]/div[2]/div[1]/div/button[3]
    Sleep    3
    Click Button    Continue
