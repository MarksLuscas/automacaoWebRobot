*** Settings *** 
Library    SeleniumLibrary


*** Variables ***
${input_name}            id:firstName
${input_lastName}        id:lastName
${input_email}           id:userEmail
${select_gender}         //*[@id="genterWrapper"]/div[2]/div[1]
${input_phone}           id:userNumber
${select_calendario}     id:dateOfBirthInput
${select_month}          //*[@id="dateOfBirth"]/div[2]/div[2]/div/div/div[2]/div[1]/div[2]/div[1]/select   
${select_year}           //*[@id="dateOfBirth"]/div[2]/div[2]/div/div/div[2]/div[1]/div[2]/div[2]/select
${select_day}            //*[@id="dateOfBirth"]/div[2]/div[2]/div/div/div[2]/div[2]/div[2]/div[5]
*** Keywords ***


abrir navegador
    Open Browser   https://www.google.com.br/?hl=pt-BR   chrome  
    Set Window Size     1920   1080   
    Set Selenium Speed         1 seconds

acessar site
     Go to       https://demoqa.com/automation-practice-form


preencher campos
    Input Text                   ${input_name}            text=Lucas
    Input Text                   ${input_lastName}        text=Marques
    Input Text                   ${input_email}           text=lucas.teste@testando.com
    Click Element                ${select_gender}   
    Input Text                   ${input_phone}           text=911112223
    Click Element                ${select_calendario}
    Select From List By Value    ${select_month}          4   
    Select From List By Value    ${select_year}           1999  
    Click Element                ${select_day}            



fechar navegador
    Close Browser


*** Test Cases ***
Cenário 1: Preencher formulario
    abrir navegador 
    acessar site
    preencher campos
   
    fechar navegador