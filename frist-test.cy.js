describe('My frist tes', () => {
    it('clicking "type" shows the right heading', () =>{
        cy.visit('https://example.cypress.io')

        cy.pause()

        cy.contains('type').click()

        cy.url().should('include','/commands/actions')

        cy.get('.action-email')
        .type('fake@email.com')
        .should('have.value','fake@email.com')
    })
})
