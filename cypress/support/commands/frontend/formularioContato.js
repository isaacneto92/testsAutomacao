Cypress.Commands.add("acessarFormularioContato", function() {
    cy.visit(Cypress.env("url_formularioContato"))
})

Cypress.Commands.add("informeNomeFormulario", function() {
    cy.get('#Name').type();
})

Cypress.Commands.add("informeEmailFormulario", function() {
    cy.get('#email').type();
})

Cypress.Commands.add("informeCompanyFormulario", function() {
    cy.get('#Company').type();
})

Cypress.Commands.add("informeWebsiteFormulario", function() {
    cy.get('#Website').type();
})

Cypress.Commands.add("informePhoneFormulario", function() {
    cy.get('#Phone').type();
})

Cypress.Commands.add("informeInquiryFormulario", function() {
    cy.get('#Inquiry').type();
})

Cypress.Commands.add("clickSubmit", function() {
    cy.contains('submit').click();

})

Cypress.Commands.add("validarMensagem", function() {
    return cy.get('#Error').invoke('text');

})