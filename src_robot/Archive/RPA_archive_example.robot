*** Settings ***
Library     RPA.Archive


*** Variables ***
${TEST_MESSAGE}     Hello Linh


*** Tasks ***
Add many files to zip
    Log To Console    ${CURDIR}${/}documents
    Log To Console    ${TEST_MESSAGE}
    ${list_file}    Create List    hello1.txt hello3.txt
    # Add To Archive    ${list_file}    text.zip

    Archive Folder With Zip    ${CURDIR}    documents.zip    recursive=True

# *** Settings ***
# Library    RPA.Archive

# *** Tasks ***
# Creating a ZIP archive
#    Archive Folder With ZIP    ${CURDIR}${/}tasks    tasks.zip    recursive=True    include=*.robot    exclude=/.*
#    @{files}    List Archive    tasks.zip
#    FOR    ${file}    IN    ${files}
#    Log    ${file}
#    END
#    Add To Archive    .${/}..${/}missing.robot    tasks.zip
#    &{info}    Get Archive Info
