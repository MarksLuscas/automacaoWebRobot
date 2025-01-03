*** Settings ***
Resource    ../../Resource/Settings.resource
Resource    ../../Elements/Main_Elements.resource

*** Keywords ***
E realize o cadastro
    Wait Until Element Is Visible      ${Registro.Input_PrimeiroNome}  10
    Input Text                         ${Registro.Input_PrimeiroNome}  ${PrimeiroNome}
    Wait Until Element Is Visible      ${Registro.Input_UltimoNome}    10
    Input Text                         ${Registro.Input_UltimoNome}    ${UltimoNome}     
    Wait Until Element Is Visible      ${Registro.Button_Country}      10
    Click Element                      ${Registro.Button_Country}  
    Wait Until Element Is Visible      ${Registro.Input_Country}
    Input Text                         ${Registro.Input_Country}       Brazil   
    Wait Until Element Is Visible      ${Registro.Button_Brazil}
    Click Element                      ${Registro.Button_Brazil}          
    Wait Until Element Is Visible      ${Registro.Input_Telefone}      10
    Input Text                         ${Registro.Input_Telefone}      ${Telefone}  
    Wait Until Element Is Visible      ${Registro.Input_Email}         10
    Input Text                         ${Registro.Input_Email}         ${Email}  
    Wait Until Element Is Visible      ${Registro.Input_Senha}         10 
    Input Text                         ${Registro.Input_Senha}         ${Senha}
    Sleep                              15s       
    Wait Until Element Is Visible      ${Registro.Button_Signup}       10 
    Sleep                              2s
    Click Element                      ${Registro.Button_Signup}
    Title Should Be                    title=Signup Success

E clique para fazer o login
    Wait Until Element Is Visible      ${Registro.Btn_Account}      10
    Click Element                      ${Registro.Btn_Account} 
    Wait Until Element Is Visible  ${Registro.A_OpcaoLogin}      10
    Click Element                  ${Registro.A_OpcaoLogin} 