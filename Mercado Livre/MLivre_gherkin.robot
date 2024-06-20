*** Settings ***
Documentation    Essa suíte testa o site do Mercado Livre
Resource         MLivre_resources.robot
Test Setup       Abrir o navegador
Test Teardown    Fechar o navegador


*** Test Cases ***
Caso de Teste 01 - Acesso ao menu "Ofertas"
    [Documentation]    Esse teste verifica o menu ofertas do site Mercado
    ...                e verifica a categoria Ofertas do dia
    [Tags]             menus  categorias
    Dado que estou na home page do Mercado Livre
    Quando acessar o menu "Ofertas"
    Então o título da página deve ficar "Ofertas do dia | Mercadolivre Brasil"
    E o texto "Ofertas do dia | Mercadolivre Brasil" deve ser exibido na página

Caso de Teste 02 - Pesquisa de um Produto
    [Documentation]    Esse teste verifica a busca de um produto
    [Tags]             busca_produtos  lista_busca
    Dado que estou na home page do Mercado Livre
    Quando pesquisar pelo produto "Xbox Series S"
    Então a página deve retornar o produto pesquisado