*** Settings *** 
Library    SeleniumLibrary


*** Variables ***
${url}     teste
${variavel2}     hhhh


*** Keywords ***
abrir navegador
    Open Browser     https://www.linkedin.com/feed/    chrome


fechar o browser
    Close Browser

*** Test Cases ***
Cenário 1: Teste de abrir o navegador
    abrir navegador     
    fechar o browser