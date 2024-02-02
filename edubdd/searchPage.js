const URL = 'http://zero.webappsecurity.com/index.html';
const search = '#searchTerm';
const success = '.brand';

class searchPage{
    static visit(){
        cy.visit(URL);
        cy.url().should('include','index.html')
    }
    static searching (){
        cy.get(search).type('banking {enter}')
    }
    static successed(){
        cy.get(success).should('be.visible');
    }
}

export default searchPage;