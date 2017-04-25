<b><h2>Final Report</h2></b><br>
<br>
<br>
<b><h3>Overview:</h3></b><br>
My project is called <b>Midi-keyboard</b>. Its a program designed in Racket using libraries <b>rsound</b> and <b>portaudio</b> with specific use of their section called <b>piano-tones</b>. What I did was I took values from piano-tones and applied a <b>Let-Is-Lambda</b> approach to turn these into <b>Note Objects</b>. A few <b>Iterative</b> functions later these objects were ordered sequentially to create a full line in sheet music and eventually a specific song that they modeled. The song chosen was <b>FurElise by Beethovan</b>. I chose this song because it was the very first song I learned how to play on the piano and I thought it was fitting that it would be the very first one I would bring to life in Racket! The final outcome of my project was a simple UI with a <b>Recursive Help-Text function</b> that can display all the commands my program can do as well as a <b>Password-based Command system</b> that will execute any of the commands the user chooses. These commands range from Displaying or Playing: a single note, Line of notes, or the full song.<br>
<br>
<b><h3>Course Correlation:</h3></b><br>
I would like to pick out specific topics and highlight some of the code that embodies them and explain why:<br>
<br>
<b>Data Abstraction</b> - In my program there are several examples of Objects and their Data being Abstract. A good example is how each line of the sheet music is created using a password based function that way when they are called to compile into a song they can be used without the user actually knowing what goes on in there respective functions. Another example of this is the final form of my Password-based Command system that based on user input will run a specific action from my program without ever showing the user what is going on or how it does it. It keeps it completely abstract and encapsulated.<br>
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
<b>Recursion</b> - This was implemented through a series of functions that are able to Recursively display the Notes from a part of song or the entire song. This was done using helper functions that take the Note Objects I created earlier and read them from the parts of the song or whole song that we formed. The ending result recursively displays the notes as output.<br>
Below is an excerpt of the code:<br>
```
;;Each part put in a list
(define recursive-part1 '(E D E D E B D C A C E A B E G B C E E D '- A E A  E E G A E A))
(define recursive-part2 '(E D E B D C A C E A B E C B A E D E D E B D C '- A E A E E G A E A '-))
(define recursive-part3 '(A C E A B E G B C E E D E D E B D C A C E A A E A E E G A E A '- A E A))
(define recursive-part4 '(B E C B A B C D E G F E D F E D C E D C E E G A E A C G C G G B A E A))
(define recursive-part5 '(B E E E E E E E D E D E D E B D C A C E A B  E G B E E '- '- A E A E E G))
(define recursive-part6 '(C E E D E D E B D C A C E A B E C B A A E A '- A E A E E G A E A))

(define recursive-whole '('(E D E D E B D C A C E A B E G B C E E D '- A E A  E E G A E A)
                          '(E D E B D C A C E A B E C B A E D E D E B D C '- A E A E E G A E A '-)
                          '(A C E A B E G B C E E D E D E B D C A C E A A E A E E G A E A '- A E A)
                          '(B E C B A B C D E G F E D F E D C E D C E E G A E A C G C G G B A E A)
                          '(B E E E E E E E D E D E D E B D C A C E A B  E G B E E '- '- A E A E E G)
                          '(C E E D E D E B D C A C E A B E C B A A E A '- A E A E E G A E A)))
;;Function that can output the notes from a list
(define (display list)
  (if (null? list)
      '()
      (cons (car list)
       (display (cdr list)))))
```
<br>
<br>
