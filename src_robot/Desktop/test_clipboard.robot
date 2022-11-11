*** Settings ***
Library           RPA.Desktop

*** Tasks ***
Clipping
    # Click    point:50,100
    # ${word}=    Open file    test.txt
    # Close application    ${word}
    # ${value}=    Copy To Clipboard    Resurter
    # Log    Copied text: ${value}
    Copy to clipboard    Text from Robot to clipboard
    ${var}=    Paste From Clipboard    coordinates:822,710
    Clear Clipboard
    Log To Console    ${var}
    Move mouse    offset:0,400
