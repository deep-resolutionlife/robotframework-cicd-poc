*** Settings ***
Library    SeleniumLibrary
Library    RequestsLibrary
Library    Process
Library    DateTime
Library    OperatingSystem

*** Test Cases ***
Headless Chrome - Google Test
    open browser    about:    headlesschrome
    ${originalImplicitWait} =    set selenium implicit wait    5 seconds
    set test variable    ${originalImplicitWait}
    Set Window Size    1100    786
    delete all cookies
    Go to   https://www.google.com
    Capture Page Screenshot