describe('Testing login',() =>{
    beforeEach(() => {
        cy.visit('http://zero.webappsecurity.com/login.html')
      })
    it('Kunjungi Website ',()=>{
        cy.url().should('include','login.html')   
    })
    it('chek username',() =>{
        cy.get('#user_login').type('username').should('have.value','username')
        //cy.get('#user_login').type('username')
    })
    it('chek passwrod',() =>{
        cy.get('#user_password').type('password').should('have.value','password')
        //cy.get('#user_password').type('password')
    })
    it('checked remeber me',() =>{
        cy.get('#user_remember_me').check()
    })
})