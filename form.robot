*** Settings *** 
Library    SeleniumLibrary


*** Variables ***
${input_name}            id:name
${input_email}           id:email
${input_phone}           id:phone
${input_textarea}        id:textarea
${sunday_checkbox}       id:sunday 
${saturday_checkbox}     id:saturday 
${select_country}        id:country
${select_color}          id:colors    
${select_animals}        id:animals
${select_calendario}     id:datepicker


*** Keywords ***


abrir navegador
    Open Browser   https://www.google.com.br/?hl=pt-BR   chrome  
    Set Window Size     1920   1080   
    Set Selenium Speed         1 seconds

acessar site
     Go to       https://testautomationpractice.blogspot.com


preencher campos
    Input Text    ${input_name}    Lucas
    Input Text    ${input_email}     lucas.teste@testando.com
    Input Text    ${input_phone}    911112223
    Input Text    ${input_textarea}    Texto texto
    Select Radio Button      gender    male
    Select Checkbox    ${sunday_checkbox}
    Select Checkbox    ${saturday_checkbox}
    Select From List By Value     ${select_country}     brazil    
    Select From List By Value     ${select_color}       blue  
    Select From List By Value     ${select_animals}       dog  
    Click Element                 ${select_calendario}  
    Click Element        //*[@id="ui-datepicker-div"]/table/tbody/tr[3]/td[4]/a   



fechar navegador
    Close Browser


*** Test Cases ***
Cenário 1: Preencher formulario
    abrir navegador 
    acessar site
    preencher campos
   
    fechar navegador