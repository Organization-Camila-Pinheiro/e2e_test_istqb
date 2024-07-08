import {
    Given,
    When,
    Then
} from "@badeball/cypress-cucumber-preprocessor";



When("the student answers all questions:", (dataTable) => {
    dataTable.hashes().forEach(element => {
        cy.get('[data-cy="select-question' + element.questionNumber + '"]').select(element.correctAnswer,element.wrongAnswer,element.emptyAnswer);
        
    });
    

});

When("the student clicks on the button Ranking", () => {
    cy.get('[data-cy="button-ranking"]').click();

})

Then("the student should see the information with the ranking {string}", (ranking) => { 
    cy.get('[data-cy="ranking"]').should("have.text", ranking);

})

