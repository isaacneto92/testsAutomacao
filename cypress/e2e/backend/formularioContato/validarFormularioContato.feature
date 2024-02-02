Feature: Validar Formulario Contato

Scenario Outline: Validar Formulario de contato enviado direto pelo backend
Given que informo os campos "<name>","<email>","<Company>", "<Website>","<phone>","<Inquiry>"
When envio os campos
Then deve ter codigo "<codigoB>" conforme esperado
And seguinte retorno do body "<retornoB>" conforme esperado

Examples:
|name            |email                |Company |Website               |phone        |Inquiry                       |codigoB|retornoB                                            |
|Joao santos     |teste@teste.com.br   |Brt ltda|http://www.brta.com.br|(51)3221-5105|contato da empresa BRT salvo  |200    |"sucesso": true                                     |
|Guilherme saline|teste123@teste.com.br|Arg ltda|http://www.arg.com.br |(51)3233-3333|contato do emprego ARG salvo  |200    |"sucesso": true                                     |
|Joao santos     |testeteste.com.br    |Brt ltda|http://www.brta.com.br |(51)3221-5105|contato da empresa BRT salvo |412    |"sucesso": false, "erro": "Campo email inválido."   |
|Guilherme saline|teste123@teste.com.br|Arg ltda|w.arg.com.br           |(51)3233-3333|contato do emprego ARG salvo |412    |"sucesso": false, "erro": "Campo website inválido." |
|Guilherme saline|teste123@teste.com.br|Arg ltda|http://www.brta.com.br |32333333     |contato do emprego ARG salvo |412    |"sucesso": false, "erro": "Campo phone inválido."   |
|Joao santos     |                     |Brt ltda|http://www.brta.com.br |(51)3221-5105|contato da empresa BRT salvo |412    |"sucesso": false, "erro": "Campo email inválido."   |
|Guilherme saline|teste123@teste.com.br|Arg ltda|                      |(51)3233-3333|contato do emprego ARG salvo  |412    |"sucesso": false, "erro": "Campo website inválido." |
|Guilherme saline|teste123@teste.com.br|Arg ltda|http://www.brta.com.br |            |contato do emprego ARG salvo  |412    |"sucesso": false, "erro": "Campo phone inválido."   |

