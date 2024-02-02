Cypress.Commands.add("gerarFormularioContato", function(payload) {
    cy.api({
        method: "POST",
        url: Cypress.env("url_gerarFormularioContato"),
        body: payload,
        failOnStatusCode: false
    })

})