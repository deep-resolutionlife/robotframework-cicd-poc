*** Settings ***
Library    chromedriversync.py
Library    SeleniumLibrary
Library    RequestsLibrary
Library    Process
Library    DateTime
Library    OperatingSystem

*** Test Cases ***
Headless Chrome - Google Test
    ${chromedriver_path}=   chromedriversync.Get Chromedriver Path
    Create Webdriver    chrome   executable_path=${chromedriver_path}
    open browser     about:   headlesschrome
    ${originalImplicitWait} =    set selenium implicit wait    5 seconds
    set test variable    ${originalImplicitWait}
    Set Window Size    1100    786
    delete all cookies
    Go to   https://www.google.com    sleep  5s
    Capture Page Screenshot