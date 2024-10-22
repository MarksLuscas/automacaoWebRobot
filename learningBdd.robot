*** Settings *** 
Library    SeleniumLibrary


*** Variables ***
#Dados do teste
${nomeDoLivro}    Vampiro: A Mascara

#Configuracao
${site_google}    https://www.google.com.br
${URL}            https://www.amazon.com.br/ref=nav_logo
${browser}        chrome


#Elementos da pagina
${input_de_pesquisa}              //input[@id="twotabsearchtextbox"]  
${botao_de_pesquisa}              //input[@id="nav-search-submit-button"] 
${livro_escolhido}                //img[@alt="Galápagos, Vampiro: A Máscara, um Jogo RPG para Gamers, 2 a 10 jogadores, 120 minutos por partida."]
${botao_de_add_ao_carrinho}       //input[@id="add-to-cart-button"] 
${botao_Nao_Obrigado}             //*[@id="attachSiNoCoverage"]/span/input 
${mensagem_de_sucesso}            //*[@id="sw-atc-details-single-container"]/div[2]

*** Keywords ***
Dado que estou no site da Amazon
    Open Browser                 ${site_google}  ${browser}
       Set Window Size     1910   1090 
    Sleep     1s
    Go to                        ${URL}     
    Press Keys                   ${None}                        keys=button \ue035  
    Sleep     1s
     

E procuro pelo livro desejado
    Input Text                   ${input_de_pesquisa}   ${nomeDoLivro}
    Click Element                ${botao_de_pesquisa}

E entro na pagina dele
    Click Element                ${livro_escolhido}
    
Quando clico em adicionar ao carrinho
    Click Element                ${botao_de_add_ao_carrinho}
    Sleep   1s
    Click Element                ${botao_Nao_Obrigado}

Entao vejo que foi adicionado
    Sleep   1s
    Element Should Be Visible    ${mensagem_de_sucesso}
    Close Browser


*** Test Cases ***
Cenário 1: Colocar um livro no carrinho no site da Amazon
  Dado que estou no site da Amazon
  E procuro pelo livro desejado
  E entro na pagina dele
  Quando clico em adicionar ao carrinho
  Entao vejo que foi adicionado