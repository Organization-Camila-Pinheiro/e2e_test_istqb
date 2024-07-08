import {
    Given,
    When,
    Then
} from "@badeball/cypress-cucumber-preprocessor";

When("click on the button show the answer on the question {string}", (questionNumber) => {
    cy.get('[data-cy="button-show-answer-question' + questionNumber + '"]').click();
});

Then("the student should see the answer {string} on question {string}", (correctMessage, questionNumber) => {
    cy.get('[data-cy="respuesta' + questionNumber + '"]').should("have.text", correctMessage)
});