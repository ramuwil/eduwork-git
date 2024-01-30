describe('Navbar', () => {
    beforeEach(function()  {
        cy.visit('http://zero.webappsecurity.com/index.html')
        cy.url().should('include','index.html')
    });
    it('Display online Banking Content', () => {
        cy.get('#onlineBankingMenu').click()
        cy.url().should('include','online-banking.html').
        and('eq','http://zero.webappsecurity.com/online-banking.html').
        and('contain','online-banking')
        cy.get('h1').should('be.visible')
        
    });
    it('Display Feedback', () => {
        cy.get('#feedback').click()
        cy.url().should('include','feedback.html').
        and('eq','http://zero.webappsecurity.com/feedback.html').
        and('contain','feedback')
        cy.get('#feedback-title').should('have.text','Feedback')
    });
    it('Display Homepage', () => {
        cy.contains('Zero Bank').click()
        cy.url().should('include','index.html').
        and('eq','http://zero.webappsecurity.com/index.html').
        and('contain','index')
    });
});