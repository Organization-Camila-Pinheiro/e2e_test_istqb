import {
    Given,
    When,
    Then
} from "@badeball/cypress-cucumber-preprocessor";

When("the student selects an answer {string} on question {string}", (studentAnswer, questionNumber) => {
    cy.get('[data-cy="select-question' + questionNumber + '"]').select(studentAnswer);

});

When("the student clicks on Correct button on question {string}", (questionNumber) => {
    cy.get('[data-cy="button-correct-answer-question' + questionNumber + '"]').click();

});

Then("the student should see the message {string} on question {string}", (answerMessage, questionNumber) => {
    cy.get('[data-cy="corrigir' + questionNumber + '"]').should("have.text", answerMessage);

});