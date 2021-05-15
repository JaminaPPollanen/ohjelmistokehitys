*** Settings ***
Documentation    Creating Questionnaire and Checking it
Resource    ../Resources/common_functionalities.robot
Library    SeleniumLibrary      timeout=30s

Test Setup    Starting Backend Side
Test Teardown    Finish Testcase

#Taman automaatiotestin ajokommentti: robot -d results Tests/1creating_questionnaire.robot
*** Variables ***

*** Test Cases ***
Creating Questionnaire
    [Documentation]    Creating Questionnaire and Checking it
    [Tags]    Functional
    Press "Add questionnaire" button
    Insert Input To Title And Description
    Check If The Questionnaire Is On The List
    Go To Frontend Side
    Check If Made Questionnaire Is On The Page
    Click The Test Questionnaire
    Return To Main Page

*** Keywords ***
Press "Add questionnaire" button
    Click Link    xpath:/html/body/div/a
    Wait Until Page Contains Element    xpath:/html/body/div/h1

Insert Input To Title And Description
    Input Text    xpath://*[@id="title"]    Testi
    Input Text    xpath://*[@id="description"]  Testi testi
    Press Keys    xpath:/html/body/div/form/input   RETURN

Check If The Questionnaire Is On The List
    Wait Until Page Contains Element    xpath:/html/body/div/h1
    Page Should Contain    Testi

Check If Made Questionnaire Is On The Page
    Wait Until Page Contains Element    xpath://*[@id="root"]/div/div/div[3]/div/a/h3
    Page Should Contain    Testi

Click The Test Questionnaire
    Click Element   xpath://*[@id="root"]/div/div/div[4]/div/a/h3

Return To Main Page
    Wait Until Page Contains Element    xpath://*[@id="root"]/div/div/div/div/form/button/span[1]
    Click Element    xpath://*[@id="root"]/div/header/div/a[2]/h6