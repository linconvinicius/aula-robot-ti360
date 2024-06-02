*** Settings ***
Documentation    Essa suíte testa o site do Globo.com
Resource         globo_resources.robot
Test Setup       Abrir o navegador
Test Teardown    Fechar o navegador


*** Test Cases ***
Caso de Teste 01 - Acesso da menu "g1"
    [Documentation]    Esse teste verifica o menu ofertas do site Globo.com
    ...                e verifica a categoria Ofertas do dia
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