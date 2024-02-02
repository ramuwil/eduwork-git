import searchPage from "./searchPage";
const {Given, When, Then}= require ("@badeball/cypress-cucumber-preprocessor");

Given('I visited the website',() =>{
    searchPage.visit()
    //cy.visit('http://zero.webappsecurity.com/index.html');
    //cy.url().should('include','index.html')
})
When('I did a search on the search box menu', () =>{
    searchPage.searching()
    //cy.get('#searchTerm').type('banking {enter}')
})
Then('I succeeded in searching',() =>{
    searchPage.successed()
    //cy.get('.brand').should('be.visible')
})

