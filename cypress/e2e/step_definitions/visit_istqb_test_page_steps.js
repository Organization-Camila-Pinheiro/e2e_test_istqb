import {
    Given,
    When,
    Then
} from "@badeball/cypress-cucumber-preprocessor";

Given("the student is on the istqb test page", () => { 
// visitar una pagina web diferente a la base url
//cy.visit("https://www.bootcampqa.com/");

// cuando esta definida en cypress.confg.js la base url
cy.visit("/")

})