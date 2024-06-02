*** Settings ***
Library    SeleniumLibrary
Library    XML

*** Variables ***
${BROWSER}                 chrome 
${URL}                     https://www.globo.com/
${PAGINA_NOTICIA}          (//a[contains(.,'g1')])[2]
${PAGINA_ESPORTE}          (//a[contains(.,'ge')])[4]

*** Keywords ***
Abrir o navegador
    Open Browser    browser=${BROWSER}
    Maximize Browser Window

Fechar o navegador
    Capture Page Screenshot
    Close Browser

#KEYWORD GENÉRICA
Dado que estou na home page do Globo.com
    Go To    url=${URL}
    Wait Until Element Is Visible    locator=${PAGINA_NOTICIA}    timeout=10s

#KEYWORDS CASO DE TESTE 1
Quando acessar a página do "g1"
    Click Element    locator=${PAGINA_NOTICIA} 

Então o título da página deve ficar "g1 - O portal de notícias da Globo"
    Wait Until Page Contains    text="g1 - O portal de notícias da Globo"

#KEYWORDS CASO DE TESTE 2
Quando acessar a página do "ge"
    Click Element    locator=${PAGINA_ESPORTE}

Então o título da página deve ficar "ge.globo - É esporte sempre"
    Title Should Be    title=ge.globo - É esporte sempre