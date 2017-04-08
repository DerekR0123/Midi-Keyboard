#lang racket
;;Libraries
(require rsound
         rsound/piano-tones)
         ;;htdp/world)

;;All of this will go in a readme eventually

;;Milestone 1 Goals:
;;1. Map Notes to objects
;;2. Create functions to pair these notes
;;3. Create a system to make a song out of the pairings
;;4. Create a guide line for lessons incorperated and for understanding what each part means
;;5. Research Songs / Notes / Music for idea's
;;6. Learn about Sleep timing Clock Cycles
;;7. Implement Let for definitions
;;8. Upload pictures of Notes + Sheet music from Songs in this program

;;Done: 1 , 2 , 3 , 4 , 5 , 6 , 7 is done

;;Milestone 2 Goals:
;;1. Implement recursive songs to show understanding of class
;;2. Fix proper sound values -> theres Ranges from A to F I put random values
;;3. Finish Fixing Sleep Values so stream isnt effected
;;4. Create a guide for a user to be able to type stuff in my program without having to read the whole code
;;5. Finishing Touches on things from Milestone 1:
;;6. Research Libraries to add additional functionality to program
;;7. Research Key-Events and UI
;;8. Create a README with a menu to navigate my program
;;Possibly id like to implement lambda over the combinations
;;9. Implement Lambda into combinations
;;Optional -> Implement Iterative songs to show understanding of class after recursion
;;Optional -> Implement Keyboard-event's to play notes
;;Optional -> Implement a UI for user to do the things in this program
;;OPTIONAL -> Create a demo for an audience user to play with

;;Done: 

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




;;;;;;;;;;;;;;;;;;;;; END OF MENU ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



;; Start of Code

;;1.1
;;;;;;;;;;;;;;;; Object Creation ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;1.2
;;;;;;;;;;;;;;;Creating Note Objects;;;;;;;;;;;;;;;;;;;;;;
;;Creating Note Objects from traditional Piano Keys;;;;;;
;;Will incorperate the Let  / Lambda that we were taught in class

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


;;;;;;;;;;;;;;; END of Note Creation;;;;;;;;;;;;;;;;;;;


;;1.3
;;;Creating Parts of Songs ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
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
(play E)
(sleep 0.28)
(play D)
(sleep 0.28)
(play E)
(sleep 0.28)
(play D)
(sleep 0.28)
(play B)
(sleep 0.3)
(play D)
(sleep 0.3)
(play C)
(sleep 0.3)
(play A)

(sleep 0.32)
(play C)
(sleep 0.3)
(play E)
(sleep 0.3)
(play A)
(sleep 0.3)
(play B)


(sleep 0.32)
(play E)
(sleep 0.3)
(play G)
(sleep 0.3)
(play B)
(sleep 0.3)
(play C)

(sleep 0.32)
(play E)
(sleep 0.3)
(play E)
(sleep 0.3)
(play D)

;;;;;;;;;;; end of line1 of part1 ;;;;;;;;;;

(sleep 0.32)

(sleep 0.32)
(play A)
(sleep 0.28)
(play E)
(sleep 0.28)
(play A)

(sleep 0.32)
(play E)
(sleep 0.28)
(play E)
(sleep 0.28)
(play G)

(sleep 0.32)
(play A)
(sleep 0.28)
(play E)
(sleep 0.28)
(play A)

;;;;; end of line2 of part1

)
(else "bad password")))
;;;;;;;;;;;;;;;;;;;END of PART1;;;;;;;;;;;;;;;;;;;;;;;;;;;


;;;;;;;;;;;;;;;;;PART2;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define (part2 password)
 (cond ((eq? password 'password2)


(sleep 0.28)
(play E)
(sleep 0.28)
(play D)
(sleep 0.28)
(play E)
(sleep 0.3)
(play B)
(sleep 0.3)
(play D)
(sleep 0.3)
(play C)
(sleep 0.3)
(play A)

(sleep 0.32)
(play C)
(sleep 0.3)
(play E)
(sleep 0.3)
(play A)
(sleep 0.3)
(play B)

(sleep 0.32)
(play E)
(sleep 0.3)
(play C)
(sleep 0.3)
(play B)
(sleep 0.3)
(play A)


(sleep 0.32)
(play E)
(sleep 0.27)
(play D)
(sleep 0.27)
(play E)
(sleep 0.27)
(play D)
(sleep 0.27)
(play E)
(sleep 0.3)
(play B)
(sleep 0.3)
(play D)
(sleep 0.3)
(play C)

;;;end of line1 of part2 ;;;;;

(sleep 0.32)

(sleep 0.32)
(play A)
(sleep 0.28)
(play E)
(sleep 0.28)
(play A)

(sleep 0.32)
(play E)
(sleep 0.28)
(play E)
(sleep 0.28)
(play G)

(sleep 0.32)
(play A)
(sleep 0.28)
(play E)
(sleep 0.28)
(play A)
(sleep 0.14)

;;end of line2 of part2 ;;;

)
(else "bad password")))

;;;;;;;;;;;;;;;;;;; END of Part2 ;;;;;;;;;;;;;;;;;;;;;;

;;;;;;;;;;;;;;;;;PART3;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(define (part3 password)
 (cond ((eq? password 'password3)

(sleep 0.28)
(play A)

(sleep 0.3)
(play C)
(sleep 0.3)
(play E)
(sleep 0.3)
(play A)
(sleep 0.3)
(play B)

(sleep 0.3)
(play E)
(sleep 0.3)
(play G)
(sleep 0.3)
(play B)
(sleep 0.3)
(play C)

(sleep 0.3)
(play E)
(sleep 0.27)
(play E)
(sleep 0.27)
(play D)
(sleep 0.27)
(play E)
(sleep 0.27)
(play D)
(sleep 0.27)
(play E)
(sleep 0.27)
(play B)
(sleep 0.27)
(play D)
(sleep 0.27)
(play C)
(sleep 0.27)
(play A)

(sleep 0.3)
(play C)
(sleep 0.3)
(play E)
(sleep 0.3)
(play A)

;;;;; end of line1 of part3 ;;;;;

(sleep 0.3)
(play A)
(sleep 0.3)
(play E)
(sleep 0.3)
(play A)

(sleep 0.3)
(play E)
(sleep 0.3)
(play E)
(sleep 0.3)
(play G)

(sleep 0.3)
(play A)
(sleep 0.3)
(play E)
(sleep 0.3)
(play A)

(sleep 0.3)

(sleep 0.3)
(play A)
(sleep 0.3)
(play E)
(sleep 0.3)
(play A)

;;;;; end of line2 of part3 ;;;;;;;

)
(else "bad password")))

;;;;;;;;;;;;;;; END OF PART 3 ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


;;;;;;;;;;;;;;;;;PART4;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(define (part4 password)
 (cond ((eq? password 'password4)

(sleep 0.28)
(play B)

(sleep 0.3)
(play E)
(sleep 0.3)
(play C)
(sleep 0.3)
(play B)
(sleep 0.3)
(play A)

(sleep 0.32)
(play B)
(sleep 0.3)
(play C)
(sleep 0.3)
(play D)
(sleep 0.3)
(play E)

(sleep 0.3)
(play G)
(sleep 0.3)
(play F)
(sleep 0.3)
(play E)
(sleep 0.3)
(play D)

(sleep 0.32)
(play F)
(sleep 0.3)
(play E)
(sleep 0.3)
(play D)
(sleep 0.3)
(play C)

(sleep 0.3)
(play E)
(sleep 0.3)
(play D)
(sleep 0.3)
(play C)

;;;;; end of line1 of part4 ;;;;;

(sleep 0.3)
(play E)
(sleep 0.3)
(play E)
(sleep 0.3)
(play G)

(sleep 0.3)
(play A)
(sleep 0.3)
(play E)
(sleep 0.3)
(play A)

(sleep 0.3)
(play C)
(sleep 0.3)
(play G)
(sleep 0.3)
(play C)

(sleep 0.3)
(play G)
(sleep 0.3)
(play G)
(sleep 0.3)
(play B)

(sleep 0.32)
(play A)
(sleep 0.3)
(play E)
(sleep 0.3)
(play A)

;;;; end of line2 of part4 ;;;;

)
(else "bad password")))

;;;;;;;;;;;;;;;;;;;;; END of PART4 ;;;;;;;;;;;;;;;;;;;;

;;;;;;;;;;;;;;;;;;;;;; PART5;;;;;;;;;;;;;;;;;;;;;
(define (part5 password)
 (cond ((eq? password 'password5)
        
(sleep 0.28)
(play B)

(sleep 0.27)
(play E)
(sleep 0.27)
(play E)
(sleep 0.27)
(play E)
(sleep 0.27)
(play E)
(sleep 0.27)
(play E)
(sleep 0.27)
(play E)
(sleep 0.27)
(play E)
(sleep 0.27)
(play D)
(sleep 0.27)
(play E)
(sleep 0.27)
(play D)
(sleep 0.27)
(play E)
(sleep 0.27)
(play D)
(sleep 0.27)
(play E)
(sleep 0.27)
(play B)
(sleep 0.27)
(play C)
(sleep 0.27)
(play A)

(sleep 0.3)
(play C)
(sleep 0.3)
(play E)
(sleep 0.3)
(play A)
(sleep 0.3)
(play B)

(sleep 0.3)
(play E)
(sleep 0.3)
(play G)
(sleep 0.3)
(play B)

;;;; end of line1 part5 ;;;;;;;

(sleep 0.3)
(play E)
(sleep 0.3)
(play E)

(sleep 0.1)

(sleep 0.1)

(sleep 0.3)
(play A)
(sleep 0.3)
(play E)
(sleep 0.3)
(play A)

(sleep 0.3)
(play E)
(sleep 0.3)
(play E)
(sleep 0.3)
(play G)

;;;;end of line2 of part5 ;;;;

)
(else "bad password")))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;; END OF PART5 ;;;;;;;;;;;;;;;;;;;;;;

;;;;;;;;;;;;;;;;;;;; PART6 ;;;;;;;;;;;;;;;;;;;;;;;;;;

(define (part6 password)
 (cond ((eq? password 'password6)

(sleep 0.2)
(play C)

(sleep 0.27)
(play E)
(sleep 0.27)
(play E)
(sleep 0.27)
(play D)
(sleep 0.27)
(play E)
(sleep 0.27)
(play D)
(sleep 0.27)
(play E)
(sleep 0.27)
(play B)
(sleep 0.27)
(play D)
(sleep 0.27)
(play C)
(sleep 0.27)
(play A)

(sleep 0.3)
(play C)
(sleep 0.27)
(play E)
(sleep 0.27)
(play A)
(sleep 0.27)
(play B)

(sleep 0.3)
(play E)
(sleep 0.27)
(play C)
(sleep 0.27)
(play B)
(sleep 0.27)
(play A)

;;;;end of line1 of part6 ;;;;

(sleep 0.3)
(play A)
(sleep 0.27)
(play E)
(sleep 0.27)
(play A)

(sleep .08)

(sleep 0.3)
(play A)
(sleep 0.27)
(play E)
(sleep 0.27)
(play A)

(sleep 0.3)
(play E)
(sleep 0.27)
(play E)
(sleep 0.27)
(play G)

(sleep 0.3)
(play A)
(sleep 0.27)
(play E)
(sleep 0.27)
(play A)

;;;;end of line2 of part6

)
(else "bad password")))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;; END OF PART5 ;;;;;;;;;;;;;;;;;;;;;;


        
;;1.4
;;;;;;;;;;;;;;;;; SONG Creation;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;Actual Real Composition created with notes
;;Composition done by Beethoven
;;Composition Name: Fur Elise
;;Sheet Music: In Repository
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;Attempt To Change this to lambda if time later

(define (FurElise)
  (part1 'password1)
  (part2 'password2)
  (part3 'password3)
  (part4 'password4)
  (part5 'password5)
  (part6 'password6))

;;;;;;;;;;;;;;;;;;END OF SONG CREATION;;;;;;;;;;;







;;Idea for Environment Later
;(big-bang 1000 1000 2 3)
;;(define (change w a-key-event)
 ;;(cond
   ;; [(key=? a-key-event 'left) (play (piano-tone 60))]
   ;; [(key=? a-key-event 'right) (play (piano-tone 80))]
   ;; [else w]))

