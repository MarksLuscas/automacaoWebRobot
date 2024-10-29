*** Variables ***
&{Home}
...    A_Account=//*[@id="navbarSupportedContent"]/div[2]/ul/li[3]/a
...    a_voos=//a[contains(text(),"flights")]
...    A_Visto=//a[@href="https://www.phptravels.net/visa"]
...    A_OpcaoLogin=//a[@href="https://www.phptravels.net/login"]   
...    A_OpcaoRegistro=//*[@href="https://www.phptravels.net/signup"]

#Voos
...    Btn_Ida=//select[@id="hotels_city"]
...    Input_IdaeVolta=//input[@id="round-trip"]
...    Input_Ida=//input[@id="autocomplete"]
...    Input_Volta=//input[@id="autocomplete2"]
...    Input_DataIda=(//input[@id="departure"])[1]
...    Input_DataVolta=(//input[@id="return"])[1]
...    A_PassageirosDrop=//a[@href="#"]
...    Div_QtdPassageiros=(//div[@class="qtyInc"])[1]
...    Button_PesquisarVoo=//button[@id="flights-search"]