describe('Payment bank', () =>{
    it('login tes', () =>{
        cy.visit('http://zero.webappsecurity.com/login.html')
        cy.url().should('include','login.html')
        cy.fixture('tes').then(user =>{
            const username = user.username
            const password = user.password
        cy.login(username, password)
        //cy.pay()
        //cy.get('.alret-error').should('contain.text','login and/or password are wrong.')
        })
        
       
    })
   
})