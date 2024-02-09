describe('TES Method POST', () => {
    it('Login via ApI', () => {
        var add ={
            'email':'sanber123@mail.com',
            'password': 'sanber123@'
        }
        cy.request('POST','https://kasir-api.belajarqa.com/authentications',add).then((response)=>{
            expect(response.status).equal(201)
            expect(response.body).to.have.property('status','success')
            expect(response.body).to.have.property('message','Authentication berhasil ditambahkan')
        })
    });
});