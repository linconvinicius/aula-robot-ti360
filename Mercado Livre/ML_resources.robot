*** Settings ***
Library    SeleniumLibrary
Library    XML

*** Variables ***
${BROWSER}                 chrome 
${URL}                     https://www.mercadolivre.com.br/
${OFERTAS}                 //a[contains(.,'Ofertas')]
${OFERTAS_DIA}             //h1[contains(.,'Ofertas do dia')]

*** Keywords ***
Abrir o navegador
    Open Browser    browser=${BROWSER}
    Maximize Browser Window

Fechar o navegador
    Capture Page Screenshot
    Close Browser

#KEYWORD GENÉRICA
Dado que estou na home page do Mercado Livre
    Go To    url=${URL}
    Wait Until Element Is Visible    locator=${OFERTAS}

#KEYWORDS CASO DE TESTE 1
Quando acessar o menu "Ofertas"
    Click Element    locator=${OFERTAS}

Então o título da página deve ficar "${FRASE}"
    Wait Until Page Contains    text=${FRASE}
    Wait Until Element Is Visible    locator=${OFERTAS_DIA}

E o texto "${TITULO}" deve ser exibido na página
    Title Should Be    title=${TITULO}

#KEYWORDS CASO DE TESTE 2
Quando pesquisar pelo produto "${PRODUTO}"
    Input Text   css=input.nav-search-input    ${PRODUTO}
    Click Element    xpath=//button[contains(@type,'submit')] 
    Wait Until Page Contains Element    css=ol.ui-search-layout    10s

Então a página deve retornar o produto pesquisado
    Title Should Be    Xbox Series S | MercadoLivre 📦
    Wait Until Element Is Visible    xpath=//input[contains(@type,'text')]    10s
