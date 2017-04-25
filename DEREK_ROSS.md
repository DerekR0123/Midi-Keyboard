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

<b>Recursion</b> - This was implemented through a series of functions that are able to Recursively display the Notes from a part of song or the entire song. This was done by creating Lists and then recursively working our way down the Car and Cdr's of the list until we hit the end of the list (nil). There is also a few other examples of recursion in my program but I find this one to be the strongest.<br>
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

<b>Functional Approaches</b> - In my program many functions and helper functions are used to complete just about every ability my program has to offer. The best example of this is the function that combines our Note objects into Lines from the sheet music and then another function calls upon these helper functions to create the full song.<br>
Below is an excerpt of the code:<br>

```
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;Actual Real Composition created with notes
;;Composition done by Beethoven
;;Composition Name: Fur Elise
;;Sheet Music: In Repository
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define (FurElise) ;;Function that calls upon the helper functions and okays the entire FurElise Song
  (part1 'password1) ;;Function that plays the first line from the sheet music
  (part2 'password2) ;;Function that plays the second line from the sheet music
  (part3 'password3) ;;Function that plays the third line from the sheet music
  (part4 'password4) ;;Function that plays the fourth line from the sheet music
  (part5 'password5) ;;Function that plays the fifth line from the sheet music
  (part6 'password6)) ;;Function that plays the sixth (final) line from the sheet music
 ```
 <br>
 <br>
 
<b>State-Modification Approaches</b> - There are a few password based systems throughout the program that will run different functions and provide different outputs and abilities based on the state of the password being changed by the user input. I beleive my Midi-Keyboard menu (Password-based Command System) shows the best example of state-modification based on the user's alteration on the password input.<br>
Below is an excerpt of the code:<br>
<br>

```
;;;1.8 Midi-Keyboard Menu!;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;This menu allows you to do any part of my program just by typing in the desired phrase

(define (midi-keyboard password)
  (cond ((eqv? password 'display-part1) (display-notes 'part1))
        ((eqv? password 'display-part2) (display-notes 'part2))
        ((eqv? password 'display-part3) (display-notes 'part3))
        ((eqv? password 'display-part4) (display-notes 'part4))
        ((eqv? password 'display-part5) (display-notes 'part5))
        ((eqv? password 'display-part6) (display-notes 'part6))
        ((eqv? password 'display-whole) (display-notes 'whole))
        ((eqv? password 'play-part1)    (part1 'password1))
        ((eqv? password 'play-part2)    (part2 'password2))
        ((eqv? password 'play-part3)    (part3 'password3))
        ((eqv? password 'play-part4)    (part4 'password4))
        ((eqv? password 'play-part5)    (part5 'password5))
        ((eqv? password 'play-part6)    (part6 'password6))
        ((eqv? password 'play-whole)    (FurElise))
        (else "Invalid Entry -> Please enter (help) for more info")))
```
<br>
<br>

<b>Iteration</b> - In my program I created a way to get passed the missing New Line character problem in Racket. In Racket there is no such thing as a new line character so if you wanted to print out strings in a readable and decent looking fashion you run into trouble. I found a way by assigning Objects the Strings I wanted to print and then using iteration to print out the strings until I was done. This allowed me to create a Help-Text function that could display all of the possible commands my program has to offer to the user if they ran my program and weren't sure what It could do.<br>
Below is an excerpt of the code:<br>
<br>

```
(define (help-iter)
  (helper1 0))
  (define (helper1 counter)
  (if (> counter 8)
      null
      (cond ((eqv? counter 1) "hello" (helper1 (+ counter 1)))
            ((eqv? counter 2) (show str4) (helper1 (+ counter 1)))
            ((eqv? counter 3) (show str5) (helper1 (+ counter 1)))
            ((eqv? counter 4) (show str6) (helper1 (+ counter 1)))
            ((eqv? counter 5) (show str7) (helper1 (+ counter 1)))
            ((eqv? counter 6) (show str8) (helper1 (+ counter 1)))
            ((eqv? counter 7) (show str9) (helper1 (+ counter 1)))
            ((eqv? counter 8) (show str10) (helper1 (+ counter 1)))
            (else (helper1 (+ counter 1))))))
```

<br>
<br>

<b>Object-Orientation</b> - As you have read so far from the other examples of my program you will find that just about everything in my program has to do with Objects and Object Oriented Programming. From the very start the Notes for the keys were created as objects all the way down to String Objects that were created to be read iteratively for a Help-Text UI menu. In my opinion the Help-Text menu shows a great example of objects and the use of <b>Lambda</b> in the form of an <b>Identity Function</b> <br>
Below is an excerpt of the code:<br>

```
;;Using lambda I made the identity function to print a string which can be used to add a newline between strings
(define (show y)
  ((lambda (x) x) y))

;;Opening Strings
(define str1 "Welcome, for a list of options please type in (help)")
(define str2 "Otherwise proceed to enter the desired command:")
(show str1)
(show str2)

;;Help Option String Notes
(define str3 "Please enter one of these commands:")
(define str4 "To display notes please enter (midi-keyboard 'display-part1) - displays notes for part 1")
(define str5 "                              (midi-keyboard 'display-part2) - displays notes for part 2")
(define str6 "                              (midi-keyboard 'display-part3) - displays notes for part 3")
(define str7 "                              (midi-keyboard 'display-part4) - displays notes for part 4")
(define str8 "                              (midi-keyboard 'display-part5) - displays notes for part 5")
(define str9 "                              (midi-keyboard 'display-part6) - displays notes for part 6")
(define str10"                              (midi-keyboard 'display-whole) - displays notes for the whole song")
(define str11 " ")

;;Help Option String Notes
(define str12 "Please enter one of these commands:")
(define str13 "To display notes please enter (midi-keyboard 'play-part1) - plays notes for part 1")
(define str14 "                              (midi-keyboard 'play-part2) - plays notes for part 2")
(define str15 "                              (midi-keyboard 'play-part3) - plays notes for part 3")
(define str16 "                              (midi-keyboard 'play-part4) - plays notes for part 4")
(define str17 "                              (midi-keyboard 'play-part5) - plays notes for part 5")
(define str18 "                              (midi-keyboard 'play-part6) - plays notes for part 6")
(define str19 "                              (midi-keyboard 'play-whole) - plays notes for the whole song")

;;Total Menu
(define list5 (cons str3 (cons str4 (cons str5 (cons str6 (cons str7 (cons str8 (cons str9 (cons str10
              (cons str11 (cons str12 (cons str13 (cons str14 (cons str15 (cons str16 (cons str17 (cons str18
               (cons str19 str11))))))))))))))))))
```

<br>
<br>
