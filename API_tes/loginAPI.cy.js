describe('TES Method POST', () => {
    //const token= 'Basic ZmFpczpzYW5iZXIxMjNA='
    it('Login via ApI', () => {
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
})