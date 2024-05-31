*** Settings ***
Library    SeleniumLibrary
Library    XML

*** Variables ***
${BROWSER}                 chrome 
${URL}                     https://www.globo.com/
${PAGINA}                 (//a[contains(.,'g1')])[2]
${PREVISÃO}             //div[@class='post-bastian-products__header post-previsao-do-tempo__header']

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
    Wait Until Element Is Visible    locator=${PAGINA}    timeout=10s

#KEYWORDS CASO DE TESTE 1
Quando acessar a página do "g1"
    Click Element    locator=${PAGINA}

Então o título da página deve ficar "${FRASE}"
    Wait Until Page Contains    text=${FRASE}

#KEYWORDS CASO DE TESTE 2
Quando pesquisar pelo produto "Xbox Series S"
    Quando acessar a página do "g1"