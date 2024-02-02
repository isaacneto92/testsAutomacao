Feature: Validar Formulario de Contato com os campos válidos
Scenario Outline: Validar Formulario de contato com os campos válidos
Given acesso o formulario de contato com sucesso
And informo o campo name "<nameV>" válido
And informo o campo email "<emailV>" válido
And informo o campo company "<CompanyV>" valido
And informo o campo website "<Websitev>"válido
And informo o campo phone "<phoneV>"válido
And informo o campo Inquiry "<InquiryV>"válido
When clico em submit
Then deve enviar email

Examples:
|nameV            |emailV                |CompanyV |WebsiteV               |phoneV        |InquiryV                      |
|Joao santos      |teste@teste.com.br    |Brt ltda |http://www.brta.com.br |(51)3221-5105 |contato da empresa BRT salvo  |
|Guilherme saline |teste123@teste.com.br |Arg ltda |http://www.arg.com.br  |(51)3233-3333 |contato do emprego ARG salvo  |

