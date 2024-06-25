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

//borrar todas las cookies
cy.clearCookies();

//recargar una pagina
cy.reload();

//coger un elemento de la pagina con get
//por clase
cy.get(".nav-link");
//por tipo de elemento
cy.get("a");
// por id
cy.get('#welcomelink');
//por atributo o valor
cy.get('a[href="#welcome"]')
// por data-cy o data-test_ el mas recomendado para usar!!!
})