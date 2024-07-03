Feature: Show the answer
As a student, I want to see the correct answer to the question, So than I learn more about testing

Scenario: See the answer of the question

Given the student is on the ISTQB exam website
When click on the button show the answer on the question "1"
Then the student should see the answer "La respuesta correcta es la C" on question "1"

Given the student is on the ISTQB exam website
When click on the button show the answer on the question "3"
Then the student should see the answer "La respuesta correcta es la A" on question "3"

Given the student is on the ISTQB exam website
When click on the button show the answer on the question "5"
Then the student should see the answer "La respuesta correcta es la C" on question "5"

Given the student is on the ISTQB exam website
When click on the button show the answer on the question "7"
Then the student should see the answer "La respuesta correcta es la C" on question "7"

Given the student is on the ISTQB exam website
When click on the button show the answer on the question "9"
Then the student should see the answer "La respuesta correcta es la B" on question "9"