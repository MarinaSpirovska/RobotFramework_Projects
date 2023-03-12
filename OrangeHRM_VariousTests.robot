*** Settings ***
Library           Selenium2Library

*** Test Cases ***
OrangeHRM_CorrectLogin
    Open Browser    https://opensource-demo.orangehrmlive.com/web/index.php/auth/login    Chrome
    Maximize Browser Window
    Sleep    2
    Input Text    name=username    Admin
    Sleep    2
    Input Text    name=password    admin123
    Sleep    2
    Click Button    class=orangehrm-login-button
    Sleep    4
    Close Browser

OrangeHRM_LoginWithoutUandP
    Open Browser    https://opensource-demo.orangehrmlive.com/web/index.php/auth/login    Chrome
    Maximize Browser Window
    Sleep    2
    Click Button    //*[@id="app"]/div[1]/div/div[1]/div/div[2]/div[2]/form/div[3]/button

OrangeHRM_LoginWthoutUsername
    Open Browser    https://opensource-demo.orangehrmlive.com/web/index.php/auth/login    Chrome
    Maximize Browser Window
    Sleep    2
    Input Text    name=password    admin123
    Click Button    //*[@id="app"]/div[1]/div/div[1]/div/div[2]/div[2]/form/div[3]/button

OrangeHRM_LoginWithoutPass
    Open Browser    https://opensource-demo.orangehrmlive.com/web/index.php/auth/login    Chrome
    Maximize Browser Window
    Sleep    2
    Input Text    name=username    Admin
    Sleep    2
    Click Button    class=orangehrm-login-button

OrangeHRM_Menu
    Open Browser    https://opensource-demo.orangehrmlive.com/web/index.php/auth/login    Chrome
    Maximize Browser Window
    Sleep    2
    Input Text    name=username    Admin
    Sleep    2
    Input Text    name=password    admin123
    Sleep    2
    Click Button    class=orangehrm-login-button
    Sleep    2
    Click Link    Link:PIM
    Sleep    2
    Click Link    Link:Leave
    Sleep    2
    Click Link    Link:Time
    Sleep    2
    Click Link    Link:Recruitment
    Sleep    2
    Click Link    Link:My Info
    Sleep    2
    Click Link    Link:Performance
    Sleep    2
    Close Browser

OrangeHRM_AdminClicks
    Open Browser    https://opensource-demo.orangehrmlive.com/web/index.php/auth/login    Chrome
    Maximize Browser Window
    Sleep    2
    Input Text    name=username    Admin
    Sleep    2
    Input Text    name=password    admin123
    Sleep    2
    Click Button    class=orangehrm-login-button
    Sleep    4
    Click Link    Link:Admin
    Sleep    2
