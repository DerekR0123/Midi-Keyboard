#lang racket
;;Libraries
(require rsound
         rsound/piano-tones
         htdp/world)

;; MENU (Documentation to make my project easier to understand
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
;;1.5




;;;;;;;;;;;;;;;;;;;;; END OF MENU ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



;; Start of Code

;;1.1
;;;;;;;;;;;;;;;; Object Creation ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;1.2
;;;;;;;;;;;;;;;Creating Note Objects;;;;;;;;;;;;;;;;;;;;;;
;;Creating Note Objects from traditional Piano Keys;;;;;;
;;Will incorperate the Let  / Lambda (let-is-lambda) that we were taught in class
(define E (piano-tone 60))
(define D (piano-tone 65))
(define B (piano-tone 55))
(define C (piano-tone 70))
(define A (piano-tone 62))
(define G (piano-tone 68))

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
 (cond ((eq? password 'password)
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
(play A)
(sleep 0.28)
(play E)
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
(play E)
(sleep 0.28)
(play E)
(sleep 0.28)
(play G)


(sleep 0.3)
(play E)
(sleep 0.3)
(play G)
(sleep 0.3)
(play B)
(sleep 0.3)
(play C)
(play A)
(sleep 0.28)
(play E)
(sleep 0.28)
(play A)

(sleep 0.3)
(play E)
(sleep 0.3)
(play E)
(sleep 0.3)
(play D)
)
(else "bad password")))
;;;;;;;;;;;;;;;;;;;END of PART1;;;;;;;;;;;;;;;;;;;;;;;;;;;


;;;;;;;;;;;;;;;;;PART2;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define (part2 password)
 (cond ((eq? password 'password)


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
(play A)
(sleep 0.28)
(play E)
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
(play E)
(sleep 0.28)
(play E)
(sleep 0.28)
(play G)

(sleep 0.3)
(play E)
(sleep 0.3)
(play C)
(sleep 0.3)
(play B)
(sleep 0.3)
(play A)
(play A)
(sleep 0.28)
(play E)
(sleep 0.28)
(play A)

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
(sleep 0.3)
(play B)
(sleep 0.3)
(play D)
(sleep 0.3)
(play C)
)
(else "bad password")))

;;;;;;;;;;;;;;;;;;; END of Part2 ;;;;;;;;;;;;;;;;;;;;;;











;;1.4
;;;;;;;;;;;;;;;;; SONG Creation;;;;;;;;;;;;;;;;;;;
(define (song)
  (part1 'password)
  (part2 'password))

;;;;;;;;;;;;;;;;;;END OF SONG CREATION;;;;;;;;;;;

;(big-bang 1000 1000 2 3)
;;(define (change w a-key-event)
 ;;(cond
   ;; [(key=? a-key-event 'left) (play (piano-tone 60))]
   ;; [(key=? a-key-event 'right) (play (piano-tone 80))]
   ;; [else w]))

