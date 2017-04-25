<b><h2>Final Report</h2></b><br>
<br>
<br>
<b><h3>Overview:</h3></b><br>
My project is called <b>Midi-keyboard</b>. Its a program designed in Racket using libraries <b>rsound</b> and <b>portaudio</b> with specific use of their section called <b>piano-tones</b>. What I did was I took values from piano-tones and applied a <b>Let-Is-Lambda</b> approach to turn these into <b>Note Objects</b>. A few <b>Iterative</b> functions later these objects were ordered sequentially to create a full line in sheet music and eventually a specific song that they modeled. The song chosen was <b>FurElise by Beethovan</b>. I chose this song because it was the very first song I learned how to play on the piano and I thought it was fitting that it would be the very first one I would bring to life in Racket! The final outcome of my project was a simple UI with a <b>Recursive Help-Text function</b> that can display all the commands my program can do as well as a <b>Password-based Command system</b> that will execute any of the commands the user chooses. These commands range from Displaying or Playing: a single note, Line of notes, or the full song.<br>
<br>
<b><h3>Course Correlation:</h3></b><br>
I would like to pick out specific topics and highlight some of the code that embodies them and explain why:<br>
<br>
<h5>Data Abstraction</h5> - In my program there are several examples of Objects and there data being Abstract. A good example is how each line of the sheet music is created using a password based function that way when they are called to compile into a sonng; this allows us to call upon the lines of music without actually knowing what goes on in there respective functions. Another example of this is the final form of my Password-based Command system that based on user input will run a specific action from my program without ever showing the user what is going on or how it does it. It keeps it completely abstract and encapsulated.<br>
<br>
<b>Let and Lambda</b> - In my program I decided to incorperate a Let-Is-Lambda implementation by creating the Note Objects using this
approach. I chose to do this in order to display proper understanding of the concept and avoid the "Set!" approach we were warned about.
Below is an excerpt of the code:<br>
<br>
```
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
