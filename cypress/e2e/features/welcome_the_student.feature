Feature: Welcome the student

As a student, I want to see a welcome message with my name, so than, I have personalized exam.

Scenario: Entrer a name with less than 10 characters

Given the student is on the ISTQB exam website
When the student enters the name "Camila"
And press a button Enter
Then the student should see a message "Hola Camila, sea bienvenida al examen de ISTQB! Que hagas un buen examen!"

Scenario: Entrer an empty name 

Given the student is on the ISTQB exam website
When the student leaves empty the name 
And press a button Enter
Then the student should see a error message "El nombre es obligatorio y debe tener hasta 10 caracteres"




