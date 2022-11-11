*** Settings ***
Library    RPA.FTP

*** Variables ***
${HOST}       127.0.0.1
${PORT}       8000
${USER}       linh
${PASS}       123456

*** Tasks ***
List files on the server directory
    Connect   ${HOST}  ${PORT}  ${USER}  ${PASS}