*** Settings ***
Documentation    Essa suíte testa o site do Globo.com
Resource         globo_resources.robot
Test Setup       Abrir o navegador
Test Teardown    Fechar o navegador


*** Test Cases ***
Caso de Teste 01 - Acesso a página do "G1"
    [Documentation]    Esse teste verifica o acesso a página de notícias do G1
    [Tags]             notícias
    Dado que estou na home page do Globo.com
    Quando acessar a página do "g1"
    Então o título da página deve ficar "g1 - O portal de notícias da Globo"

Caso de Teste 02 - Acesso a página do Globo Esporte
    [Documentation]    Esse teste verifica o acesso a página Globo Esporte
    [Tags]             esportes
    Dado que estou na home page do Globo.com
    Quando acessar a página do "ge"
    Então o título da página deve ficar "ge.globo - É esporte sempre"