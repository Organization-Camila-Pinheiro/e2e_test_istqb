Feature: See ranking

As a student,
I want to click on the button “Ranking”, So than, I can see the students list with the score for each student. 

Scenario:
Given the student is on the ISTQB exam website
When the student enters the name "Camila"
And press a button Enter
And the student answers all questions:

|questionNumber | correctAnswer |
| 1             |      C        |    
| 2             |      C        |   
| 3             |      A        |     
| 4             |      B        |      
| 5             |      C        |     
| 6             |      A        |     
| 7             |      C        |     
| 8             |      A        |     
| 9             |      B        |    
| 10            |      C        |     

And clicks on the button finish the exam  


When the student enters the name "Bruno"
And press a button Enter
And the student answers all questions:

|questionNumber |  wrongAnswer | 
| 1             |        A     |     
| 2             |        B     |           
| 3             |        C     |            
| 4             |        A     |           
| 5             |        B     |            
| 6             |        C     |            
| 7             |        A     |           
| 8             |        B     |            
| 9             |        C     |           
| 10            |        B     |            

And clicks on the button finish the exam  

When the student enters the name "Marina"
And press a button Enter
And the student answers all questions:

|questionNumber | emptyAnswer |
| 1             |             |
| 2             |             |
| 3             |             |
| 4             |             |
| 5             |             |
| 6             |             |
| 7             |             |
| 8             |             |
| 9             |             |
| 10            |             |

And clicks on the button finish the exam  
And the student clicks on the button Ranking
Then the student should see the information with the ranking "Nombre: Camila Puntuación final: 20 Nombre: Marina Puntuación final: 0 Nombre: Bruno Puntuación final: -10"
