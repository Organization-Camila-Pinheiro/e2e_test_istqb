Feature: Answer the questions and see the final score
As a student,I want to answer the questions, So than I can know my final score when I finish the exam.

Scenario: See the student's final score with correct, wrong and empty answers
Given the student is on the ISTQB exam website
When the student answers the questions:

|questionNumber | selectedAnswer|
| 1             |      A        |
| 2             |      C        |
| 3             |      A        |
| 4             |      C        |
| 5             |      C        |
| 6             |      B        |
| 7             |      A        |
| 8             |               |
| 9             |      B        |
| 10            |      C        |

And clicks on the button finish the exam 
Then the user should see a message "Su puntuación final es 6"



