*** Settings ***
Library           RPA.Cloud.AWS    region=us-east-1

*** Variables ***
${BUCKET_NAME}    linhrpa
${AWS_KEY_ID}     AKIARCBGKVJR4ZXAEBOW
${AWS_KEY}        ATQjQI9Eu4ZyNdtHci9FkOW0CpkAqZ9MH9Mwmj8J

*** Tasks ***
Upload a file into S3 bucket
    [Setup]    Init S3 Client    aws_key_id=${AWS_KEY_ID}    aws_key=${AWS_KEY}
    Upload File    ${BUCKET_NAME}    ${CURDIR}${/}test.txt
    @{files}    List Files    ${BUCKET_NAME}
    FOR    ${file}    IN    @{files}
        Log    ${file}
    END
