*** Settings ***
Library     Browser


*** Tasks ***
Starting a browser with a page
    New Browser    chromium    headless=false
    New Context    viewport={'width': 1920, 'height': 1080}
    # New Page    https://marketsquare.github.io/robotframework-browser/Browser.html
    # Get Title    ==    Browser

    # Clear Text    h2#Introduction

    New Page    https://www.google.com/
    Click    input.gLFyf.gsfi
    Sleep    5s

Close a Context
    New Browser    chromium    headless=false
    Close Context    ALL

Example Test
    New Page    https://playwright.dev
    Get Text    h1    contains    Playwright

Test close page
    New Browser    chromium    headless=false
    New Page    https://www.google.com/
    New Page    https://www.youtube.com/
    Close page
    Sleep    3s
