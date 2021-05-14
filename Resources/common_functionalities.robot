*** Settings ***
Library    SeleniumLibrary      timeout=30s

*** Variables ***
${SUBMIT_BUTTON}    xpath://*[@id="root"]/div/div/div/div/form/button/span[1]
${SUBMISSION_FAILED}    xpath://*[@id="root"]/div/div[1]/div/div
${SUBMISSION_SUCCESS}   xpath://div[contains(text(), "Your answers were saved succesfully!")]

*** Keywords ***
Starting Backend Side
    Open Browser    https://ohp20kysely.herokuapp.com/     chrome
    Maximize Browser Window
    Wait Until Page Contains Element    xpath:/html/body/div/table/tbody/tr[4]/td[2]

Click "Testi" Questionnaire "Show Questions"
    Click Element    xpath:/html/body/div/table/tbody/tr[5]/td[4]/a

Starting Frontend Side
    Open Browser    https://ohp-20kysely-frontend.herokuapp.com/    chrome
    Maximize Browser Window
    Wait Until Page Contains Element    xpath://*[@id="root"]/div/div/div[3]/div/a/h3

Go To Frontend side
    Go To    https://ohp-20kysely-frontend.herokuapp.com/
    Wait Until Page Contains Element    xpath://*[@id="root"]/div/header/div/a[1]/h5

Press "Add New Question" button
    Wait Until Page Contains Element    xpath:/html/body/div/a[2]
    Click Element    xpath:/html/body/div/a[1]

Click Submit Button
    Scroll Element Into View    ${SUBMIT_BUTTON}
    Click Element   ${SUBMIT_BUTTON}
    Sleep    1s

Answer To Questionnaire
    Click Element    xpath://*[@id="root"]/div/div/div[4]/div/a/h3
    Wait Until Page Contains Element    xpath://*[@id="root"]/div/div/div/div/h2
Return To Main Page
    Click Element    xpath:/html/body/div/a[2]
    Page Should Contain    Haaga-Helia questionnaires

Finish Testcase
    Close Browser
