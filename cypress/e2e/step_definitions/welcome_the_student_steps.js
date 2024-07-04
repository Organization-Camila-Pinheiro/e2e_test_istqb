import {
    Given,
    When,
    Then
} from "@badeball/cypress-cucumber-preprocessor";

Given("the student is on the ISTQB exam website", () => {
    cy.visit("/")
});

When("the student enters the name {string}", (name) => {
    cy.get('[data-cy="input-nombre-welcome"]').clear();
    cy.get('[data-cy="input-nombre-welcome"]').type(name);
});

When("press a button Enter", () => {
    cy.get('[data-cy="button-welcome"]').click();
});

Then("the student should see a message {string}", (welcomeMessage) => {
    cy.get('[data-cy="welcome-message"]').should("have.text", welcomeMessage)
});


When("the student leaves empty the name", () => {
    cy.get('[data-cy="input-nombre-welcome"]').clear();
});

Then("the student should see a error message {string}", (errorMessage) => {
    cy.get('[data-cy="eror-welcome-message"]').should("have.text", errorMessage)
});






