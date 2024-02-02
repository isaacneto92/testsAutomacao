/// <reference types="cypress" />

Given("acesso o formulario de contato com sucesso", () => {
  cy.acessarFormularioContato();
});

And("informo o campo name {string} válido", (nameV) => {
  cy.informeNomeFormulario(nameV);
});

And("informo o campo email {string} válido", (emailV) => {
  cy.informeEmailFormulario(emailV);
});

And("informo o campo company {string} válido", (CompanyV) => {
  cy.informeCompanyFormulario(CompanyV);
});

And("informo o campo website {string} válido", (Websitev) => {
  cy.informeWebsiteFormulario(Websitev);
});

And("informo o campo phone {string} válido", (phoneV) => {
  cy.informePhoneFormulario(phoneV);
});

And("informo o campo Inquiry {string} válido", (InquiryV) => {
  cy.informeInquiryFormulario(InquiryV);
});

When("clico em submit", () => {
  cy.clickSubmit();
});

Then("deve enviar email", () => {
});
