describe('TES Method POST', () => {
    it('add a new user', () => {
        var user ={
            'name':'Ramu will sandra',
            'job': 'QA Engginer'
        }
        cy.request('POST','https://reqres.in/api/users',user).then((Response)=>{
            expect(Response.status).equal(201)
            expect(Response.body.name).to.eq(user.name)
            expect(Response.body.job).to.eq(user.job)
        })
    });
});