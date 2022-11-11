*** Settings ***
Library           RPA.Email.ImapSmtp    smtp_server=smtp.gmail.com    smtp_port=587
# Task Setup      Authorize    account=${GMAIL_ACCOUNT}    password=${GMAIL_PASSWORD}

*** Variables ***
${GMAIL_ACCOUNT}    linhstartwork@gmail.com
${GMAIL_PASSWORD}    jmvygmksehuzpuco
${RECIPIENT_ADDRESS}    linhstartwork2@gmail.com
${BODY_IMG1}      ${CURDIR}${/}hello.png
${BODY_IMG2}      ${CURDIR}${/}hello.png
${EMAIL_BODY}     <h1>Heading</h1><p>Status: <img src='hello.png' alt='approved image'/></p>
...               <p>INVOICE: <img src='hello.png' alt='invoice image'/></p>

*** Tasks ***
Sending email
    Authorize    account=${GMAIL_ACCOUNT}    password=${GMAIL_PASSWORD}
    Send Message    sender=${GMAIL_ACCOUNT}
    ...    recipients=${RECIPIENT_ADDRESS}
    ...    subject=Message from RPA Robot
    ...    body=RPA Robot message body
