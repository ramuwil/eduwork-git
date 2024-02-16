describe('Tes validate content', () => {
    it('Succes validate content', () => {
        cy.request({
            method :'GET',
            url :'https://pokeapi.co/api/v2/pokemon/ditto'
        }).then((respone) => {
                expect(respone.status).to.eq(200)
                expect(respone.body.abilities[0].ability.name).to.equal('limber')
                expect(respone.body.abilities[0].ability.url).to.equal('https://pokeapi.co/api/v2/ability/7/')
            })
        
    });
});