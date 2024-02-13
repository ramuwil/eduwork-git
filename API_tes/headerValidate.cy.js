describe('Tes header', () => {
    it('success validate', () => {
        cy.request('https://pokeapi.co/api/v2/pokemon/ditto').as('pokemon')
        cy.get('@pokemon').its('headers').its('content-type')
        .should('include','application/json; charset=utf-8')
        cy.get('@pokemon').its('body').and('have.a.property','abilities')
        cy.get("@pokemon") .its("body").its('species')
        .should('include', { 
          name: 'ditto', 
          url: 'https://pokeapi.co/api/v2/pokemon-species/132/'
        });
    })
});