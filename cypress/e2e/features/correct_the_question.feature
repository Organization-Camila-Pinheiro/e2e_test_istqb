Feature: Correct the question
As a student, I want to correct my question, So than I can see if my answer is correct or wrong and see the score.

Scenario Outline: Answer a question 

Given the student is on the ISTQB exam website
When the student selects an answer <studentAnswer> on question <questionNumber>
And the student clicks on Correct button on question <questionNumber>
Then the student should see the message <answerMessage> on question <questionNumber>

Examples:
|questionNumber| studentAnswer | answerMessage                         |
|  "2"         |      "A"      | "Respuesta equivodada! Puntuación: -1"|
|  "2"         |      "C"      | "Respuesta correcta! Puntuación: 2"   |
|  "2"         |      ""       | "Respuesta equivodada! Puntuación: 0" |