*** Settings *** 
Library    SeleniumLibrary


*** Variables ***
${input_name}            id:firstName
${input_lastName}        id:lastName
${input_email}           id:userEmail
${select_gender}         //*[@id="genterWrapper"]/div[2]/div[1]
${input_phone}           id:userNumber
${click_calendario}     id:dateOfBirthInput
${select_month}          //*[@id="dateOfBirth"]/div[2]/div[2]/div/div/div[2]/div[1]/div[2]/div[1]/select   
${select_year}           //*[@id="dateOfBirth"]/div[2]/div[2]/div/div/div[2]/div[1]/div[2]/div[2]/select
${select_day}            //*[@id="dateOfBirth"]/div[2]/div[2]/div/div/div[2]/div[2]/div[2]/div[5]
${click_subject}         id:subjectsContainer
${input_subject}         id:subjectsInput
${select_hobbies}        xpath:/html/body/div[2]/div/div/div/div[2]/div[2]/form/div[7]/div[2]/div[1]/label
${input_text}            id:currentAddress    



*** Keywords ***


abrir navegador
    Open Browser   https://www.google.com.br/?hl=pt-BR   chrome  
    Set Window Size     1920   1080   
    Set Selenium Speed         0.5 seconds

acessar site
     Go to       https://demoqa.com/automation-practice-form


preencher campos
    Input Text                   ${input_name}            text=Lucas
    Input Text                   ${input_lastName}        text=Marques
    Input Text                   ${input_email}           text=lucas.teste@testando.com
    Click Element                ${select_gender}   
    Input Text                   ${input_phone}           text=911112223
    Click Element                ${click_calendario}
    Select From List By Value    ${select_month}          4   
    Select From List By Value    ${select_year}           1999  
    Click Element                ${select_day}            
    Click Element                ${click_subject}   
    Input Text                   ${input_subject}         text=Computer Science
    Press Keys                   ${None}                  keys=button \ue007            
    Click Element                ${select_hobbies}    
    Input Text                   ${input_text}            text=Rua Teste 1245 - Bairro 333

    



fechar navegador
    Close Browser 


*** Test Cases ***
Cenário 1: Preencher formulario
    abrir navegador 
    acessar site
    preencher campos
   
    fechar navegador