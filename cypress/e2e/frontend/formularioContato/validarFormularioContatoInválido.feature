Feature: Validar Formulario com campos inválidos
Scenario Outline: Validar Formulario com campos inválidos
Given acesso o formulario de contato com sucesso
And informo o campo name "<name>"
And informo o campo email "<email>"
And informo o campo Company "<Company>"
And informo o campo Website "<Website>"
And informo o campo phone "<phone>"
And informo o campo Inquiry "<Inquiry>"
When clico em submit
Then deve dar mensagem a seguinte "<mensagem>"

Examples:
|name            |email                |Company |Website                |phone        |Inquiry                       |mensagem              |
|Joao santos     |testeteste.com.br    |Brt ltda|http://www.brta.com.br |(51)3221-5105|contato da empresa BRT salvo  |Campo email inválido  |
|Guilherme saline|teste123@teste.com.br|Arg ltda|w.arg.com.br           |(51)3233-3333|contato do emprego ARG salvo  |Campo website inválido|
|Guilherme saline|teste123@teste.com.br|Arg ltda|http://www.brta.com.br |32333333     |contato do emprego ARG salvo  |Campo phone inválido  |
|Joao santos     |                     |Brt ltda|http://www.brta.com.br |(51)3221-5105|contato da empresa BRT salvo  |Campo email inválido  |
|Guilherme saline|teste123@teste.com.br|Arg ltda|                       |(51)3233-3333|contato do emprego ARG salvo  |Campo website inválido|
|Guilherme saline|teste123@teste.com.br|Arg ltda|http://www.brta.com.br |             |contato do emprego ARG salvo  |Campo phone inválido  |
