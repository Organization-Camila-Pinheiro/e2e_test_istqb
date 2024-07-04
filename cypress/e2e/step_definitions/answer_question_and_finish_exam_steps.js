import {
    Given,
    When,
    Then
} from "@badeball/cypress-cucumber-preprocessor";

When("the student answers the questions:", (dataTable) => {
    dataTable.hashes().forEach(element => {
        cy.get('[data-cy="select-question' + element.questionNumber + '"]').select(element.selectedAnswer);
    });

});

When("clicks on the button finish the exam", () => {
    cy.get('[data-cy="button-final-score"]').click();

})

Then("the user should see a message {string}", (finalScoreMessage) => {
    cy.get('[data-cy="puntuacion-final"]').should("have.text", finalScoreMessage);

})

