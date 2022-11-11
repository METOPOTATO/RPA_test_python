*** Settings ***
Library     RPA.Email.Exchange
Task Setup  Authorize  username=${ACCOUNT}  password=${PASSWORD}

*** Variables ***
${ACCOUNT}              linhstartwork@gmail.com
${PASSWORD}             jmvygmksehuzpuco
${RECIPIENT_ADDRESS}    linhstartwork2
${IMAGES}               laputa.jpg
${ATTACHMENTS}          ${CURDIR}${/}hello.txt

*** Tasks ***
Task of sending email
    Send Message  recipients=${RECIPIENT_ADDRESS}
    ...           subject=Exchange Message from RPA Robot
    ...           body=<p>Exchange RPA Robot message body<br><img src='myimage.jpg'/></p>
    ...           save=${TRUE}
    ...           html=${TRUE}
    ...           images=${IMAGES}
    ...           cc=EMAIL_ADDRESS
    ...           bcc=EMAIL_ADDRESS
    ...           attachments=${ATTACHMENTS}
