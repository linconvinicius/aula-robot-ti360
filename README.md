# Robot Framework para automação de testes Web

Este projeto contém testes automatizados usando Robot Framework para verificar as funcionalidades dos sites Globo.com e Mercado Livre.

## Estrutura do Projeto


├── globo_resources.robot
└── ML_resources.robot


## Pré-requisitos

- Python 3.6 ou superior
- Robot Framework
- SeleniumLibrary
- Navegador Google Chrome
- ChromeDriver compatível com a versão do Google Chrome instalada

## Configuração do Ambiente

1. *Instale o Python*:
   - Verifique se você possui o Python instalado executando python --version no terminal.
   - Caso não tenha o python. Você pode baixar a versão mais recente [aqui](https://www.python.org/downloads/).

2. *Instale o Robot Framework e SeleniumLibrary*:
   - Execute o seguinte comando para instalar o Robot Framework:
     ```
     pip install robotframework
     ```

   - Execute o seguinte comando para instalar a SeleniumLibrary:
     ```
     pip install robotframework-seleniumlibrary
     ```

3. *Instale o Google Chrome*:
   - Certifique-se de ter o Google Chrome instalado. Você pode baixar a versão mais recente [aqui](https://www.google.com/chrome/).

4. *Baixe o ChromeDriver*:
   - Baixe o ChromeDriver compatível com a versão do seu Chrome [aqui](https://chromedriver.chromium.org/downloads).
   - Extraia o arquivo baixado para um diretório acessível e adicione-o ao PATH do sistema.

## Executando os Testes

1. *Clone o repositório*:
   ```
   git clone https://github.com/seu-usuario/seu-repositorio.git
   cd seu-repositorio
   ```

2. *Execute os testes*:
   ```
   robot globo_tests.robot
   robot ml_tests.robot
   ```

Caso você tenha a extensão Robot Framework Language Server instalada no VS Code, não será necessário executar o tópico 2 da sessão EXECUTANDO OS TESTES, visto que essa extensão oferece as opções de `Run Test` e `Run Suite Test`, direto no seu arquivo de cenários.

### Bons testes :)