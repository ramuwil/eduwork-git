const {Given, When, Then}= require ("@badeball/cypress-cucumber-preprocessor");

Given('I visited the website',() =>{
    cy.visit('http://zero.webappsecurity.com/index.html');
    cy.url().should('include','index.html')
})
When('I did a search on the search box menu', () =>{
    cy.get('#searchTerm').type('banking {enter}')
})
Then('I succeeded in searching',() =>{
    cy.get('.brand').should('be.visible')
})