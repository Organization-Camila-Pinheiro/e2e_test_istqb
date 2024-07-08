import {
    Given,
    When,
    Then
} from "@badeball/cypress-cucumber-preprocessor";


When("the student clicks on the button Ranking", () => {
    cy.get('[data-cy="button-ranking"]').click();

})

Then("the student should see the information with the ranking {string}", (ranking) => { 
    cy.get('[data-cy="ranking"]').should("include.text", ranking);

})

