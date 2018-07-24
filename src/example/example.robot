*** Settings ***
Library           Selenium2Library

*** Test Cases ***
Search in Google Example
    Open Browser To Firefox
    Search For Devops
    Result Should Contain Eficode

*** Keywords ***
Open Browser To Firefox
    Open Browser    https://www.google.com    browser=firefox
    Maximize Browser Window
    Firefox Should Be Open

Search For Devops
    Input Text    lst-ib    Eficode Devops
    Press Key    lst-ib    \\13

Result Should Contain Eficode
    Wait Until Page Contains    www.eficode.com    10 s
    Capture Page Screenshot
    Close All Browsers

Firefox Should Be Open
    Location Should Contain    www.google.com
