*** Settings ***
Library     RPA.Browser.Selenium


*** Tasks ***
Login as user
    Open available browser    https://facebook.com
    Input text    id:email    linh
    Input text    id:pass    123123
