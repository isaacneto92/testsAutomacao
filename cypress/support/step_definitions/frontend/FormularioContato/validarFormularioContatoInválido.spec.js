/// <reference types="cypress" />

And("informo o campo name {string}", (name) => {
  cy.informeNomeFormulario(name);
});

And("informo o campo email {string}", (email) => {
  cy.informeEmailFormulario(email);
});

And("informo o campo company {string}", (Company) => {
  cy.informeCompanyFormulario(Company);
});

And("informo o campo website {string}", (Website) => {
  cy.informeWebsiteFormulario(Website);
});

And("informo o campo phone {string}", (phone) => {
  cy.informePhoneFormulario(phone);
});

And("informo o campo Inquiry {string}", (Inquiry) => {
  cy.informeInquiryFormulario(Inquiry);
});

Then("deve dar mensagem a seguinte {string}", (mensagem) => {
  // Chama o comando personalizado e obtém a promessa com o texto
  cy.validarMensagem().then((resMensagem) => {
    // Verifica se a mensagem esperada é igual à mensagem real
    expect(resMensagem.trim()).to.equal(mensagem.trim());
  });
});
