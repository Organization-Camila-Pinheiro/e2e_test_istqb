Feature: Show the answer
As a student, I want to see the correct answer to the question, So than I learn more about testing

Scenario Outline:: See the answer of the question

Given the student is on the ISTQB exam website
When click on the button show the answer on the question <questionNumber>
Then the student should see the answer <correctMessage> on question <questionNumber>


Examples:
|questionNumber| correctMessage                  |
|  "1"         | "La respuesta correcta es la C" |
|  "3"         | "La respuesta correcta es la A" |
|  "5"         | "La respuesta correcta es la C" |
|  "7"         | "La respuesta correcta es la C" |
|  "9"         | "La respuesta correcta es la B" |