#lang racket

;;Derek Ross, Derek_Ross@student.uml.edu , Final Project OPL

;;Midi Keyboard


;;Libraries
(require rsound
         rsound/piano-tones)

;;
;; PLEASE READ
;;Windows is NOT compatable for some reason with piano-tones and rsound streams
;;I am Using Linux
;;

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; MENU (Documentation to make my project easier to understand)

;; 1.1 Object Creation
;; The goal here is to encapsulate the entire structure where I will be creating objects. I wanted to show
;; what I learned in class about how we created objects back when we had languages like scheme.
;; --- 1.1 basically stretches down till 1.x where we call the song
;; Class Lesson: Object Creation / Encapsulation (Class creation is the idea)
;;
;;1.2 Note Creation
;;I did some research and there are 7 different notes in some of the songs I will be displaying.
;; Each of these notes should be mapped as an object to a corresponding container. I created an object so
;; we could use basic encapsulation and encryption for which note represented what computer version for piano-note.
;; This is how we will implement parts of songs and later whole songs
;;Class Lesson: Let and Lambda / Polymorphism / Creating containers in a Class
;;
;;1.3 Parts of Songs
;;The goal here is to create parts of songs that you see seperated by the line blocks in real sheet music.
;;We seperate them by making them into systems like we learned in class! These systems are then called as functions
;;To a larger function which will take each part and turn it into a song!
;;Class Lesson: Function Creation / System with Password Creation
;;
;;1.4 Songs
;;The goal here is to call upon the systems or parts we previosuly created and combine them into a song structure.
;;We give this song a name and the user can type in its name at run time and it will play back the user's song!
;;Class Lesson: Structure creation / Function Calling / Inheritence
;;
;;1.5 Recursion
;;The goal here is to implement a function that makes sence in my program but also displays my understanding
;;of the concept taught in class called Recursion. If you look at this section I wrote a little code that could
;;display notes recursively - however it ends up causing a little bit of an error due to the way rsound works.
;;I proceeded from there to implement it by outputting the notes which can show the user what notes makes each
;;part of the song and what makes the whole thing!
;;
;;1.6 Pretty Text
;;The goal here is to implement lambda and sub fuctions to create a text menu to help the user navigate the ability of this
;;program. Using some functions created with lambda and the Cons structure ability I was able to take a few strings and
;;create a text menu! Theres a little info down there too about how the new line character doesn't really exist in strings
;;in racket and how I found a way around it!
;;
;;1.7 Iteration
;;The goal here is to implement an iterative function to display a text menu. Its essentially the same thing as 1.6 but
;;in an iterative call to show display my understanding of Iteration
;;
;;1.8 Midi-keyboard Menu
;;The goal here is to implement a password based system that based on what the user enters it will run a function
;;or part of the program that we have created! Its essentially our go-to place to run things from our program.
;;In order to use it the user should use the (help) command that brings up text from 1.6 Pretty Text explaining
;;all the commands that our menu has to offer.



;;;;;;;;;;;;;;;;;;;;; END OF MENU ;;;;;;;;;;;;;;;;



;; Start of Code

;;1.1
;;;;;;;;;;;;;;;; Object Creation ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;This will cover just about the entire project so as you go through you can read each section and understand why
;;I consider it to be the creation of objects.
;;
;;;;;;;;;;;;;;;;ENDS AT THE END OF THE PROGRAM;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;1.2
;;;;;;;;;;;;;;;Creating Note Objects;;;;;;;;;;;;;;;;;;;;;;
;;Creating Note Objects from traditional Piano Keys;;;;;;
;;Will incorperate the Let  / Lambda that we were taught in class


;;Playing or displaying individual notes incorperating the Let  / Lambda that we were taught in class

;;Play or Display E
(define (single-E)
  (let ((E (piano-tone 60)))
    (lambda (msg)
             (cond ((eq? msg 'play) (play E))
                   ((eq? msg 'display) "E")
                   (else "invalid action for note")))))

;;Play or Display D
(define (single-D)
  (let ((D (piano-tone 65)))
    (lambda (msg)
             (cond ((eq? msg 'play) (play D))
                   ((eq? msg 'display) "D")
                   (else "invalid action for note")))))

;;Play or Display B
(define (single-B)
  (let ((B (piano-tone 55)))
    (lambda (msg)
             (cond ((eq? msg 'play) (play B))
                   ((eq? msg 'display) "B")
                   (else "invalid action for note")))))

;;Play or Display C
(define (single-C)
  (let ((C (piano-tone 70)))
    (lambda (msg)
             (cond ((eq? msg 'play) (play C))
                   ((eq? msg 'display) "C")
                   (else "invalid action for note")))))

;;Play or Display A
(define (single-A)
  (let ((A (piano-tone 62)))
    (lambda (msg)
             (cond ((eq? msg 'play) (play A))
                   ((eq? msg 'display) "A")
                   (else "invalid action for note")))))

;;Play or Display G
(define (single-G)
  (let ((G (piano-tone 68)))
    (lambda (msg)
             (cond ((eq? msg 'play) (play G))
                   ((eq? msg 'display) "G")
                   (else "invalid action for note")))))

;;Play or Display F
(define (single-F)
  (let ((F (piano-tone 75)))
    (lambda (msg)
             (cond ((eq? msg 'play) (play F))
                   ((eq? msg 'display) "F")
                   (else "invalid action for note")))))

;;Set up for easy use of the functions
(define E (single-E))
(define D (single-D))
(define B (single-B))
(define C (single-C))
(define A (single-A))
(define G (single-G))
(define F (single-F))

;;;;;;;;;;;;;;; END of 1.2;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


;;;;;;;;1.3 Creating Parts of Songs ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;Beethovin -> Fur Elise
;;Uses 7 different notes -> so creating 7 note objects.
;;Has 6 segments of notes -> each can be broken down into functions.
;;Will implement the Function Creation aspect that we learned in class.
;;Will create a system that uses passwords so we can combine Note objects > into parts > then combine parts > into a song.
;;In the end you will type the name of the song (The password) and it will play the song!
;;Later will implement them into a list and recursively call the list to play it!


;;;;;;;;;;;;;PART1;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(define (part1 password)
 (cond ((eq? password 'password1)
        
        (sleep 0.28)
        (E 'play)
        (sleep 0.28)
        (D 'play)
        (sleep 0.28)
        (E 'play)
        (sleep 0.28)
        (D 'play)
        (sleep 0.28)
        (B 'play)
        (sleep 0.3)
        (D 'play)
        (sleep 0.3)
        (C 'play)
        (sleep 0.3)
        (A 'play)
        
        (sleep 0.32)
        (C 'play)
        (sleep 0.3)
        (E 'play)
        (sleep 0.3)
        (A 'play)
        (sleep 0.3)
        (B 'play)
        
        
        (sleep 0.32)
        (E 'play)
        (sleep 0.3)
        (G 'play)
        (sleep 0.3)
        (B 'play)
        (sleep 0.3)
        (C 'play)
        
        (sleep 0.32)
        (E 'play)
        (sleep 0.3)
        (E 'play)
        (sleep 0.3)
        (D 'play)

;;;;;;;;;;; end of line1 of part1 ;;;;;;;;;;

        (sleep 0.32)
        
        (sleep 0.32)
        (A 'play)
        (sleep 0.28)
        (E 'play)
        (sleep 0.28)
        (A 'play)
        
        (sleep 0.32)
        (E 'play)
        (sleep 0.28)
        (E 'play)
        (sleep 0.28)
        (G 'play)
        
        (sleep 0.32)
        (A 'play)
        (sleep 0.28)
        (E 'play)
        (sleep 0.28)
        (A 'play)

;;;;; end of line2 of part1

        )
       (else "bad password")))
;;;;;;;;;;;;;;;;;;;END of PART1;;;;;;;;;;;;;;;;;;;;;;;;;;;


;;;;;;;;;;;;;;;;;PART2;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define (part2 password)
  (cond ((eq? password 'password2)
         
         
         (sleep 0.28)
         (E 'play)
         (sleep 0.28)
         (D 'play)
         (sleep 0.28)
         (E 'play)
         (sleep 0.3)
         (B 'play)
         (sleep 0.3)
         (D 'play)
         (sleep 0.3)
         (C 'play)
         (sleep 0.3)
         (A 'play)
         
         (sleep 0.32)
         (C 'play)
         (sleep 0.3)
         (E 'play)
         (sleep 0.3)
         (A 'play)
         (sleep 0.3)
         (B 'play)
         
         (sleep 0.32)
         (E 'play)
         (sleep 0.3)
         (C 'play)
         (sleep 0.3)
         (B 'play)
         (sleep 0.3)
         (A 'play)
         
         
         (sleep 0.32)
         (E 'play)
         (sleep 0.27)
         (D 'play)
         (sleep 0.27)
         (E 'play)
         (sleep 0.27)
         (D 'play)
         (sleep 0.27)
         (E 'play)
         (sleep 0.3)
         (B 'play)
         (sleep 0.3)
         (D 'play)
         (sleep 0.3)
         (C 'play)
         
         ;;;end of line1 of part2 ;;;;;
         
         (sleep 0.32)
         
         (sleep 0.32)
         (A 'play)
         (sleep 0.28)
         (E 'play)
         (sleep 0.28)
         (A 'play)
         
         (sleep 0.32)
         (E 'play)
         (sleep 0.28)
         (E 'play)
         (sleep 0.28)
         (G 'play)
         
         (sleep 0.32)
         (A 'play)
         (sleep 0.28)
         (E 'play)
         (sleep 0.28)
         (A 'play)
         (sleep 0.14)
         
         ;;end of line2 of part2 ;;;
         
         )
        (else "bad password")))

;;;;;;;;;;;;;;;;;;; END of Part2 ;;;;;;;;;;;;;;;;;;;;;;

;;;;;;;;;;;;;;;;;PART3;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(define (part3 password)
  (cond ((eq? password 'password3)
         
         (sleep 0.28)
         (A 'play)
         
         (sleep 0.3)
         (C 'play)
         (sleep 0.3)
         (E 'play)
         (sleep 0.3)
         (A 'play)
         (sleep 0.3)
         (B 'play)
         
         (sleep 0.3)
         (E 'play)
         (sleep 0.3)
         (G 'play)
         (sleep 0.3)
         (B 'play)
         (sleep 0.3)
         (C 'play)
         
         (sleep 0.3)
         (E 'play)
         (sleep 0.27)
         (E 'play)
         (sleep 0.27)
         (D 'play)
         (sleep 0.27)
         (E 'play)
         (sleep 0.27)
         (D 'play)
         (sleep 0.27)
         (E 'play)
         (sleep 0.27)
         (B 'play)
         (sleep 0.27)
         (D 'play)
         (sleep 0.27)
         (C 'play)
         (sleep 0.27)
         (A 'play)
         
         (sleep 0.3)
         (C 'play)
         (sleep 0.3)
         (E 'play)
         (sleep 0.3)
         (A 'play)
         
         ;;;;; end of line1 of part3 ;;;;;
         
         (sleep 0.3)
         (A 'play)
         (sleep 0.3)
         (E 'play)
         (sleep 0.3)
         (A 'play)
         
         (sleep 0.3)
         (E 'play)
         (sleep 0.3)
         (E 'play)
         (sleep 0.3)
         (G 'play)
         
         (sleep 0.3)
         (A 'play)
         (sleep 0.3)
         (E 'play)
         (sleep 0.3)
         (A 'play)
         
         (sleep 0.3)
         
         (sleep 0.3)
         (A 'play)
         (sleep 0.3)
         (E 'play)
         (sleep 0.3)
         (A 'play)
         
         ;;;;; end of line2 of part3 ;;;;;;;
         
         )
        (else "bad password")))

;;;;;;;;;;;;;;; END OF PART 3 ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


;;;;;;;;;;;;;;;;;PART4;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(define (part4 password)
  (cond ((eq? password 'password4)
         
         (sleep 0.28)
         (B 'play)
         
         (sleep 0.3)
         (E 'play)
         (sleep 0.3)
         (C 'play)
         (sleep 0.3)
         (B 'play)
         (sleep 0.3)
         (A 'play)
         
         (sleep 0.32)
         (B 'play)
         (sleep 0.3)
         (C 'play)
         (sleep 0.3)
         (D 'play)
         (sleep 0.3)
         (E 'play)
         
         (sleep 0.3)
         (G 'play)
         (sleep 0.3)
         (F 'play)
         (sleep 0.3)
         (E 'play)
         (sleep 0.3)
         (D 'play)
         
         (sleep 0.32)
         (F 'play)
         (sleep 0.3)
         (E 'play)
         (sleep 0.3)
         (D 'play)
         (sleep 0.3)
         (C 'play)
         
         (sleep 0.3)
         (E 'play)
         (sleep 0.3)
         (D 'play)
         (sleep 0.3)
         (C 'play)
         
         ;;;;; end of line1 of part4 ;;;;;
         
         (sleep 0.3)
         (E 'play)
         (sleep 0.3)
         (E 'play)
         (sleep 0.3)
         (G 'play)
         
         (sleep 0.3)
         (A 'play)
         (sleep 0.3)
         (E 'play)
         (sleep 0.3)
         (A 'play)
         
         (sleep 0.3)
         (C 'play)
         (sleep 0.3)
         (G 'play)
         (sleep 0.3)
         (C 'play)
         
         (sleep 0.3)
         (G 'play)
         (sleep 0.3)
         (G 'play)
         (sleep 0.3)
         (B 'play)
         
         (sleep 0.32)
         (A 'play)
         (sleep 0.3)
         (E 'play)
         (sleep 0.3)
         (A 'play)
         
         ;;;; end of line2 of part4 ;;;;
         
         )
        (else "bad password")))

;;;;;;;;;;;;;;;;;;;;; END of PART4 ;;;;;;;;;;;;;;;;;;;;

;;;;;;;;;;;;;;;;;;;;;; PART5;;;;;;;;;;;;;;;;;;;;;
(define (part5 password)
  (cond ((eq? password 'password5)
         
         (sleep 0.28)
         (B 'play)
         
         (sleep 0.27)
         (E 'play)
         (sleep 0.27)
         (E 'play)
         (sleep 0.27)
         (E 'play)
         (sleep 0.27)
         (E 'play)
         (sleep 0.27)
         (E 'play)
         (sleep 0.27)
         (E 'play)
         (sleep 0.27)
         (E 'play)
         (sleep 0.27)
         (D 'play)
         (sleep 0.27)
         (E 'play)
         (sleep 0.27)
         (D 'play)
         (sleep 0.27)
         (E 'play)
         (sleep 0.27)
         (D 'play)
         (sleep 0.27)
         (E 'play)
         (sleep 0.27)
         (B 'play)
         (sleep 0.27)
         (C 'play)
         (sleep 0.27)
         (A 'play)
         
         (sleep 0.3)
         (C 'play)
         (sleep 0.3)
         (E 'play)
         (sleep 0.3)
         (A 'play)
         (sleep 0.3)
         (B 'play)
         
         (sleep 0.3)
         (E 'play)
         (sleep 0.3)
         (G 'play)
         (sleep 0.3)
         (B 'play)
         
         ;;;; end of line1 part5 ;;;;;;;
         
         (sleep 0.3)
         (E 'play)
         (sleep 0.3)
         (E 'play)
         
         (sleep 0.1)
         
         (sleep 0.1)
         
         (sleep 0.3)
         (A 'play)
         (sleep 0.3)
         (E 'play)
         (sleep 0.3)
         (A 'play)
         
         (sleep 0.3)
         (E 'play)
         (sleep 0.3)
         (E 'play)
         (sleep 0.3)
         (G 'play)
         
         ;;;;end of line2 of part5 ;;;;
         
         )
        (else "bad password")))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;; END OF PART5 ;;;;;;;;;;;;;;;;;;;;;;

;;;;;;;;;;;;;;;;;;;; PART6 ;;;;;;;;;;;;;;;;;;;;;;;;;;

(define (part6 password)
  (cond ((eq? password 'password6)
         
         (sleep 0.2)
         (C 'play)
         
         (sleep 0.27)
         (E 'play)
         (sleep 0.27)
         (E 'play)
         (sleep 0.27)
         (D 'play)
         (sleep 0.27)
         (E 'play)
         (sleep 0.27)
         (D 'play)
         (sleep 0.27)
         (E 'play)
         (sleep 0.27)
         (B 'play)
         (sleep 0.27)
         (D 'play)
         (sleep 0.27)
         (C 'play)
         (sleep 0.27)
         (A 'play)
         
         (sleep 0.3)
         (C 'play)
         (sleep 0.27)
         (E 'play)
         (sleep 0.27)
         (A 'play)
         (sleep 0.27)
         (B 'play)
         
         (sleep 0.3)
         (E 'play)
         (sleep 0.27)
         (C 'play)
         (sleep 0.27)
         (B 'play)
         (sleep 0.27)
         (A 'play)
         
         ;;;;end of line1 of part6 ;;;;
         
         (sleep 0.3)
         (A 'play)
         (sleep 0.27)
         (E 'play)
         (sleep 0.27)
         (A 'play)
         
         (sleep .08)
         
         (sleep 0.3)
         (A 'play)
         (sleep 0.20)
         (E 'play)
         (sleep 0.20)
         (A 'play)
         
         (sleep 0.3)
         (E 'play)
         (sleep 0.20)
         (E 'play)
         (sleep 0.20)
         (G 'play)
         
         (sleep 0.3)
         (A 'play)
         (sleep 0.20)
         (E 'play)
         (sleep 0.20)
         (A 'play)
         
         ;;;;end of line2 of part6
         
         )
        (else "bad password")))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;; END OF PART6;;;;; ;;;;;;;;;;;;;;;;;;;;;;


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;END OF 1.3;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


        
;;1.4
;;;;;;;;;;;;;;;;; SONG Creation;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;Actual Real Composition created with notes
;;Composition done by Beethoven
;;Composition Name: Fur Elise
;;Sheet Music: In Repository
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define (FurElise)
  (part1 'password1)
  (part2 'password2)
  (part3 'password3)
  (part4 'password4)
  (part5 'password5)
  (part6 'password6))

;;;;;;;;;;;;;;;;;;END OF 1.4 ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



;;1.5 Recursion;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;So in order to get a good view of the recursion I have learned in class I will output the notes from the song.
;;Here I will create the lists for each part which we can later access with a system.

;;Each part put in a list as symbols
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

;; system that allows you to display whatever part you want depending what you play
(define (display-notes password)
 (cond ((eq? password 'part1) (display recursive-part1))
       ((eq? password 'part2) (display recursive-part2))
       ((eq? password 'part3) (display recursive-part3))
       ((eq? password 'part4) (display recursive-part4))
       ((eq? password 'part5) (display recursive-part5))
       ((eq? password 'part6) (display recursive-part6))
       ((eq? password 'whole) (display recursive-whole))
       (else "Invalid entry , Please enter a valid entry. See Documentation for valid entry's")))


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;END OF 1.5;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



;;;1.6 Pretty DISPLAY!;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;This section is devoted into making a text UI menu to navigate through the options and abilities my program
;;Provides. However you can't just type in text like a printf from C programming -> there is no such thing as a
;; new line character. In order to get past this I made a function:

;;Using lambda I made the Identity Function to print a string which can be used to add a newline between strings
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


;;Help Function to Call menu
(define (help)
  (show list5))

;;Midi-keyboard Menu will be done in section 1.8

;;;;;;;;;;;;;;;;;;;;;;;;;;;END OF 1.6 ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


;;;;;;;;;;;;;;;;1.7 Iterative way to display menu  ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;\

;;attempt at re-creating it using iterative way to print the help-text strings

(define (display-iter)
  (helper1 1))

;;helper function for display-iter

(define (helper1 counter)
  (cond ((eqv? counter 1) (list "hello"
                                (helper1 (+ counter 1))))
        ((eqv? counter 2) (list (show str4)
                                (helper1 (+ counter 1))))
        ((eqv? counter 3) (list (show str5)
                                (helper1 (+ counter 1))))
        ((eqv? counter 4) (list (show str6)
                                (helper1 (+ counter 1))))
        ((eqv? counter 5) (list (show str7)
                                (helper1 (+ counter 1))))
        ((eqv? counter 6) (list (show str8)
                                (helper1 (+ counter 1))))
        ((eqv? counter 7) (list (show str9)
                                (helper1 (+ counter 1))))
        ((eqv? counter 8) (list (show str10)
                                (helper1 (+ counter 1))))
        (else "")))
;;

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;END OF 1.7 ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


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


;;;;;;END OF 1.8 ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



;;End of Program
;;Derek Ross.



