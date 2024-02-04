# Cypress BDD Testes - Frontend e Backend

Este projeto contém testes end-to-end (E2E) usando Cypress com a abordagem Behavior-Driven Development (BDD) para validar funcionalidades no frontend e no backend.

## Estrutura de Pastas

- **cypress/e2e/backend/formularioContato**
  - `validarFormularioContato.feature`: Arquivo de feature para testar a validação do formulário de contato no backend.
  - `validarFormularioContato_steps.js`: Arquivo de steps correspondente para a feature do backend.

- **cypress/e2e/frontend/formularioContato**
  - `validarFormularioContatoInválido.feature`: Arquivo de feature para testar a validação do formulário de contato no frontend com dados inválidos.
  - `validarFormularioContatoVálido.feature`: Arquivo de feature para testar a validação do formulário de contato no frontend com dados válidos.
  - `validarFormularioContatoInválido_steps.js`: Arquivo de steps correspondente para a feature do frontend com dados inválidos.
  - `validarFormularioContatoVálido_steps.js`: Arquivo de steps correspondente para a feature do frontend com dados válidos.

- **fixtures**
  - `formularioContato.json`: Arquivo de dados de exemplo para o formulário de contato.

- **plugins**
  - `index.js`: Arquivo de configuração dos plugins do Cypress.

- **support**
  - `commands.js`: Arquivo contendo comandos personalizados para serem usados nos testes.
  - **backend**
    - `formularioContato.js`: Arquivo contendo lógica de suporte específica para o backend.
  - **frontend**
    - `formularioContato.js`: Arquivo contendo lógica de suporte específica para o frontend.

- **step_definitions**
  - **backend/formularioContato**
    - `validarFormularioContato.spec.js`: Arquivo de teste de spec correspondente à feature do backend.
  - **frontend/formularioContato**
    - `validarFormularioContatoInválido.spec.js`: Arquivo de teste de spec correspondente à feature do frontend com dados inválidos.
    - `validarFormularioContatoVálido.spec.js`: Arquivo de teste de spec correspondente à feature do frontend com dados válidos.

- `e2e.js`: Arquivo principal para execução de testes E2E.

## Como Executar os Testes

Certifique-se de ter o [Node.js](https://nodejs.org/) instalado.

1. Clone este repositório: `git clone <URL_DO_SEU_REPOSITORIO>`.
2. Navegue até o diretório do projeto: `cd <NOME_DO_SEU_PROJETO>`.
3. Instale as dependências: `npm install`.
4. Execute os testes: `npm test`.

## Ignorar Arquivos pelo Controle de Versão

Utilizamos um arquivo `.gitignore` para listar padrões de arquivos/diretórios que devem ser ignorados pelo controle de versão.

## Configuração do Cypress

O arquivo `cypress.config.js` contém a configuração principal do Cypress.

## Dependências do Projeto

Os arquivos `package-lock.json` e `package.json` contêm as dependências e informações do projeto.

---

Este README fornece uma visão geral da estrutura de pastas e explicações básicas sobre cada diretório. Certifique-se de personalizar as instruções de instalação e execução com base nos requisitos específicos do seu projeto.
