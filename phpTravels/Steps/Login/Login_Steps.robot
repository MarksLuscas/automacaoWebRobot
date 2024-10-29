*** Settings ***
Resource    ../../Resource/Settings.resource
Resource    ../../Elements/Main_Elements.resource

*** Keywords ***
Dado que eu acesse o php travels
    Open Browser  ${URL}  ${Browser}
    Maximize Browser Window

E faça o Login
    Wait Until Element Is Visible  ${Login.Input_EmailLogin}  10
    Input Text                     ${Login.Input_EmailLogin}  ${Email}
    Wait Until Element Is Visible  ${Login.Input_SenhaLogin}  10
    Input Text                     ${Login.Input_SenhaLogin}  ${Senha}
    Run Keyword And Ignore Error   Wait Until Element Is Visible  ${Login.Button_Cookie}     5
    Run Keyword And Ignore Error   Click Element                  ${Login.Button_Cookie}
    Wait Until Element Is Visible  ${Login.Button_Logar}      10
    Click Element                  ${Login.Button_Logar} 

 E fecho o navegador
    Close Browser