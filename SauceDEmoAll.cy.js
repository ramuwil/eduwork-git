describe('All TEST CASE Sauce Demo', () => {
    it('Cheking Website', () => {
        cy.visit('https://www.saucedemo.com/v1/index.html')
        cy.url().should('include','index.html').and('contain','index')
        cy.get('.bot_column').should('be.visible')
    });
    it('Login invalid data', () => {
        cy.visit('https://www.saucedemo.com/v1/index.html')
        cy.get('[data-test="username"]').type('standard_usr').should('have.value','standard_usr')
        cy.get('[data-test="password"]').type('secret_sauce').should('have.value','secret_sauce')
        cy.get('#login-button').click()
        cy.get('[data-test="error"]').should('have.text',"Epic sadface: Username and password do not match any user in this service")
       });
       it('Login valid data', () => {
        cy.visit('https://www.saucedemo.com/v1/index.html')
        cy.get('[data-test="username"]').type('standard_user').should('have.value','standard_user')
        cy.get('[data-test="password"]').type('secret_sauce').should('have.value','secret_sauce')
        cy.get('#login-button').click()
       });       
    it('sideBarMenu', () => {
        cy.visit('https://www.saucedemo.com/v1/inventory.html')
        cy.url().should('include','inventory.html').and('contain','inventory')
        cy.get('.bm-burger-button > button').click()
        cy.get('#inventory_sidebar_link').rightclick()
        cy.url().should('include','inventory.html').and('contain','inventory')
        cy.get('#about_sidebar_link').rightclick()
        cy.get('#reset_sidebar_link').click({force: true})
        cy.get('#logout_sidebar_link').click({force: true})
        cy.url().should('include','index.html').and('contain','index')
    });
    it('Display Asceding dan desnceding', () => {
        cy.visit('https://www.saucedemo.com/v1/inventory.html')
        cy.get('.product_sort_container').select('Name (A to Z)')
    });
    it('Proses Chekout', () => {
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
    });
});