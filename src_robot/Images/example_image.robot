*** Settings ***
Library           RPA.Images

*** Keywords ***
Should show success
    [Documentation]    Raises ImageNotFoundError if success image is not on screen
    Find template on screen    ${CURDIR}${/}success.png

Save screenshot to results
    [Documentation]    Saves screenshot of desktop with unique name
    ${timestamp}=    Get current date    result_format=%H%M%S
    Take screenshot    filename=${OUTPUT_DIR}${/}desktop_${timestamp}.png
