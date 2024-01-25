 
describe('SauceDemo',() => {
    
    it('Login dulu',() => {
        cy.visit("https://www.saucedemo.com/v1/index.html");
        cy.url().should("include","index.html");
        cy.fixture('user').then(user => {
            cy.get('input[name="user-name"]').clear()
            cy.get('input[name="user-name"]').type(user.username);
        

            cy.get('input[name="password"]').clear()
            cy.get('input[name="password"]').type(user.password);

            cy.get("#login-button").click()
            //cy.get(".error-button").contains('have.text',"Epic sadface: Username and password do not match any user in this service")
        })
    })
        
    it('chekout_tes', () => {
        cy.visit("https://www.saucedemo.com/v1/inventory.html");
        cy.url().should('include','inventory.html')
        cy.get(':nth-child(1) > .pricebar > .btn_primary').click()
        cy.get('.shopping_cart_container').click()
        cy.get('.btn_action').click()
        cy.get('[data-test="firstName"]').type('ramu').should('have.value','ramu')
        cy.get('[data-test="lastName"]').type('will').should('have.value','will')
        cy.get('[data-test="postalCode"]').type('123').should('have.value','123')
        cy.get('.btn_primary').click()
        cy.get('.btn_action').click()
    })    
            
           
            
    it('sideBar tes', () => {
        cy.visit("https://www.saucedemo.com/v1/inventory.html")
        cy.url().should('include','inventory.html')
        cy.get('.bm-burger-button').click()
        //cy.get('about_sidebar_link').click()
        cy.get('#reset_sidebar_link').click()
        cy.get('#logout_sidebar_link').click()
    })

    

    
})