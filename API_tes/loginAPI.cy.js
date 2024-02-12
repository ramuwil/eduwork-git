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
    it('token tes', () => {
        cy.request({
            method:'POST',
            url:'https://kasir-api.belajarqa.com/authentications',
            headers:{
                Authorization: "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6IjBiOTc1NGFhLWRlMDktNDY3NC1iMGE4LTRmMmFmNWQ4NTVhMCIsImNvbXBhbnlJZCI6Ijk5ZTVjNDA4LTRiNmEtNDgxOC05MmI4LTUxNTJiY2I3ZDFiMyIsImlhdCI6MTcwNzcyMzIyNn0.UO5yjRN5m3KPLvd4vgRRJgWtBDO40RklcotssXaqdEA"
            },failOnStatusCode:false
        }).then((response)=>{
            expect(response.status).to.eq(400)
            //expect(response.body).to.have.property('status','success')
        })        
            
    });
});