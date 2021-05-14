*** Settings ***
Documentation    Testing functionality of answering to questions of test questionnaire
Resource    ../Resources/common_functionalities.robot
Library    SeleniumLibrary      timeout=30s

Test Setup    Starting Frontend Side
Test Teardown    Finish TestCase

*** Variables ***
${INPUT_QUESTION1}      xpath://input[@id="outlined-basic"]
${INPUT_QUESTION3}      xpath://*[@id="root"]/div/div/div/div/form/fieldset[1]/div/label[1]/span[1]/span[1]
${INPUT_QUESTION3_1}    xpath://*[@id="root"]/div/div/div/div/form/fieldset[1]/div/label[2]/span[1]/span[1]
${INPUT_QUESTION4}      xpath://*[@id="root"]/div/div/div/div/form/fieldset[2]/div/label[1]/span[1]/span[1]
${INPUT_QUESTION4_1}    xpath://*[@id="root"]/div/div/div/div/form/fieldset[2]/div/label[2]/span[1]/span[1]
${INPUT_QUESTION5}      xpath://*[@id="root"]/div/div/div/div/form/div[3]/fieldset/div/label[1]/span[1]/span[1]
${INPUT_QUESTION6}      xpath://*[@id="root"]/div/div/div/div/form/div[4]/fieldset/div/label[1]/span[1]/span[1]
*** Test Cases ***
Answering to questions
    [Documentation]    Answering to questions
    [Tags]    Functional
    Answer To Questionnaire
    Answer To ALmost All Questions
    Answer To Questionnaire
    Answer Only To All Mandatory Questions
    Answer To Questionnaire
    Miss Mandatory Answer And Try To Submit

*** Keywords ***
Answer To ALmost All Questions
    #Vastaus kysymys 1
    Click Element    ${INPUT_QUESTION1}
    Input Text    ${INPUT_QUESTION1}    Vastaus1
    #Vastaus kysymys 3
    Click Element    ${INPUT_QUESTION3}
    Click Element    ${INPUT_QUESTION3_1}
    #Vastaus kysymys 4
    Click Element    ${INPUT_QUESTION4}
    Click Element    ${INPUT_QUESTION4_1}
    #Vastaus kysymys 5
    Click Element    ${INPUT_QUESTION5}
    #Vastaus kysymys 6
    Click Element    ${INPUT_QUESTION6}
    #Submit answers
    Sleep    1s
    Click Submit Button
Answer Only To All Mandatory Questions
    #Vastaus kysymys 2
    Input Text    ${INPUT_QUESTION1}   Vastaus2.1
    #Vastaus kysymys 3
    Click Element    ${INPUT_QUESTION3}
    #Vastaus kysymys 4
    Click Element    ${INPUT_QUESTION4}
    #Vastaus kysymys 6
    Click Element    ${INPUT_QUESTION6}
    #Submit answers
    Sleep    1s
    Click Submit Button

Miss Mandatory Answer And Try To Submit
    #Vastaus kysymys 2
    Input Text    ${INPUT_QUESTION1}   Vastaus2.1
    #Vastaus kysymys 4
    Click Element    ${INPUT_QUESTION4}
    #Vastaus kysymys 6
    Click Element    ${INPUT_QUESTION6}
    #Submit answers
    Sleep    1s
    Click Submit Button
    Wait Until Page Contains Element    ${SUBMISSION_FAILED}
    #Vastaus kysymys 3
    Click Element    ${INPUT_QUESTION3}
    #Try again to submit answers
    Sleep    1s
    Click Submit Button
    Wait Until Page Contains Element     ${SUBMISSION_SUCCESS}
