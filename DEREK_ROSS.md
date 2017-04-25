<h2>Final Report</h2> <br>
<br>
<br>
<h3>Overview:</h3><br>
My project is called Midi-keyboard. Its a program designed in racket using libraries rsound and portaudion with specific use of there
section called piano-tones. What I did was I took values from piano-tones and applied a <u>Let-Is-Lambda</u> approach to turn these into
note objects. A few Recursive/Iterative functions later these objects were ordered sequentially to create a full line in sheet music and eventually a specific
song that they modeled. The song chosen was FurElise by Beethovan. The final outcome of my project was a simple UI with a help-text
function that can display all the commands my program can do as well as a user-command ui function that will execute one of the commands 
the user choices which ranges from Displaying/Playing a single note, Line of notes, or the full song.<br>
<br>
<br>
<h3>Course Correlation:</h3><br>
I would like to pick out specific topics and highlight some of the code that embodies them and explain why:<br>
<br>
<u>Let and Lambda</u> - In my program I decided to incorperate a Let-Is-Lambda implementation by creating the note objects using this
approach. I chose to do this in order to display proper understanding of the concept and avoid the "Set!" approach we were warned about.
Below is an excerpt of the code:<br>
<br>
```
;;Let 
(define E
(let [(E (piano-tone 60))] E))
(define D
(let [(D (piano-tone 65))] D))
(define B
(let [(B (piano-tone 55))] B))
(define C
(let [(C (piano-tone 70))] C))
(define A
(let [(A (piano-tone 62))] A))
(define G
(let [(G (piano-tone 68))] G))
(define F
(let [(F (piano-tone 75))] F))
```
<br>
<br>


