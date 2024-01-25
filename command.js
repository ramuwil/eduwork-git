// ***********************************************
// This example commands.js shows you how to
// create various custom commands and overwrite
// existing commands.
//
// For more comprehensive examples of custom
// commands please read more here:
// https://on.cypress.io/custom-commands
// ***********************************************
//
//
// -- This is a parent command --
// Cypress.Commands.add('login', (email, password) => { ... })
//
//
// -- This is a child command --
// Cypress.Commands.add('drag', { prevSubject: 'element'}, (subject, options) => { ... })
//
//
// -- This is a dual command --
// Cypress.Commands.add('dismiss', { prevSubject: 'optional'}, (subject, options) => { ... })
//
//
// -- This will overwrite an existing command --
// Cypress.Commands.overwrite('visit', (originalFn, url, options) => { ... })
Cypress.Commands.add('login',(username,password) =>{
    cy.clearAllCookies()
    cy.clearAllLocalStorage()
    cy.get('#user_login').clear()
    cy.get('#user_login').type(username)

    cy.get('#user_password').clear()
    cy.get('#user_password').type(password)
    cy.get('#user_remember_me').check()

    cy.get('input[name="submit"]').click()
    cy.get('#pay_bills_tab > a').click()
    cy.get('#sp_payee').select('Bank of America').should('have.value','bofa')
    //cy.get('select#sp_payee option:selected').should('have.text','Sprint')
    cy.get('#sp_account').select('Credit Card').should('have.value','5')
    cy.get('#sp_amount').type('100').should('have.value','100')
    cy.get('#sp_date').type('24-01-2024')
    cy.get('#sp_description').type('Test all the things', { force: true })
    cy.get('#pay_saved_payees').click()

    
})
Cypress.Commands.add('pay', () =>{
    cy.clearAllCookies()
    cy.clearAllLocalStorage()
    
})