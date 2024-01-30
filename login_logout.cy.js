describe('E2E Login and Logout', () => {
    beforeEach(function()  {
        cy.visit('http://zero.webappsecurity.com/login.html')
        cy.url().should('include','login.html')
    });
    it('Login Invalid data', () => {
        cy.get('#login_form').should('be.visible')
        cy.get('#user_login').type('invalid username')
        cy.get('#user_password').type('invalid password')
        cy.get('input[name="submit"]').click()
        cy.get('.alert-error').should('be.visible').and('contain.text','Login and/or password are wrong.')
    });
    
    it('Login valid data dan logout', () => {
        cy.fixture('example').then(user =>{
            cy.get('#user_login').type(user.username)
            cy.get('#user_password').type(user.password)
            cy.get('#user_remember_me').check().should('be.checked')
            cy.get('input[name="submit"]').click()
            cy.contains('username').click()
            cy.get('#logout_link').click()
            cy.get('.brand').should ('have.text','Zero Bank')
            cy.get('.active > img').should('be.visible').and('exist')
            
            })
    });
      
});