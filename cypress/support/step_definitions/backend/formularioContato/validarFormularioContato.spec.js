/// <reference types="cypress" />
import CamposFormulario from "../../../../fixtures/formularioConta.json";
let codigo;
let retorno;

Given("que informo os campos {string},{string},{string},{string},{string},{string}",(name, email, company, website, phone, Inquiry) => {
    let body = CamposFormulario;
    body.name = name;
    body.email = email;
    body.company = company;
    body.website = website;
    body.phone = phone;
    body.Inquiry = Inquiry;
    
    cy.gerarFormularioContato(body).then((res) => {
      codigo = res.status;
      retorno = res.body;
    });
  }
);

When("envio os campos", () => {

});

Then("deve ter codigo {string} conforme esperado", (codigoB) => {
  expect(codigo).to.be.equal(codigoB);
});

And("seguinte retorno do body {string} conforme esperado", (retornoB) => {
  const expectedResponse = JSON.parse(retornoB);
  const retornoObj = JSON.parse(retorno);
  
  expect(retornoObj).to.deep.equal(expectedResponse);
});