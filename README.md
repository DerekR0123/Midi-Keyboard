## Midi-Keyboard ##<br>
<h3>Derek Ross</h3>

## Overview ##
<h4>What and How?</h4><br>

So what exactly is a Midi-Keyboard? Well a Midi-Keyboard is a keyboard that you can hook up to your computer
and use it with different music creation software to produce all sorts of cool results! I created a program that can map notes from a piano to data objects and have the ability to manipulate them into some cool results. The language this program was completed in is called Racket, and the libraries used for the project are rsound and portaudio. The biggest part of these libraries that I used included the section called Piano-tone which allowed me to give numeric values for piano key noises & the ability to play them. I started off by creating objects that represent notes (Using Let-is-Lambda style approach) and then using a lot of the lessons learned in class; turned these note objects into a larger song object. Once all of this was done, I added in some  recursive / iterative functions that allows you to play or display notes: individually, as a part of the song, and/or as the whole song (FurElise). In order to properly use these functions I created a system-UI-menu with a password based input (Similar to the Bank ATM problem from homework) that can run any of my programs abilities and functions based on user input. Lastly I created a text-based Help-menu function that can explain what commands work in my system menu for user navigation (help).<br>
<br><br>

<!--- Google Image --->
Here is a similar idea of what it looks like in the real world<br>
<br>
<img src="https://i.ytimg.com/vi/-dhS0qbpMqM/maxresdefault.jpg" width="15%"></img> <br>
<br>
<br>
<!--- End of Image --->

<h3>Approaches brought from Class</h3><br>
<br>
<h5>Data Abstraction</h5> - I created some objects that represent Notes on a piano, which I used to abstractly create song objects. Later on through a password based system I created a system-menu to use functions to display or play different notes , parts of a song, and the entire song.<br>
<br>
<h5>Recursion</h5> -  This was implemented through a series of functions that are able to Recursively display the Notes from a part of song or the entire song. This was done using helper functions that take the note objects we created earlier using Let-Is-Lambda and read them from the parts of the song or whole song that we formed using one of our other functions. The ending result recursively displays the notes as output.<br>
<br>
<h5>Object-Orientation</h5> - Just about everything in this program was created as an object. This includes the notes, parts of a song, the entire song, the midi-keyboard system-menu, the text help-menu, and even the strings that I created to use for the text help-menu. I created many objects to provide Data abstraction and to show use of the understanding of Object Oriented Programming in Racket.<br>
<br>
<h5>Functional Approaches</h5> - In my program many functions and sub (helper) functions are used to complete most of the actions using the objects we have created in hopes of displaying knowledge of the implementations taught in class. The best example of this is the function that combines our Note objects into Lines from the sheet music and then combines the lines into an entire song.<br>
<br>
<h5>State-Modification Approaches</h5> - There are a few password based systems throughout the program that will run different functions and provide different outputs and abilities based on the state of the password being changed by the user input.<br>
<br>
<h5>Let and Lambda</h5> - In my program I decided to incorperate a Let-Is-Lambda implementation by creating the note objects using this approach. In addition to this I eventually needed to use Lambda for a helper function (in the identity function form) for my text help-menu. I used this helper function to create text strings to get around the missing newline character problem for my help text-menu.<br>
<br>
<h5>Iteration</h5> - In my program I created a way to display the notes recursively and then I decided to show my knowledge of iteration and re-create the same thing but iteratively. I also did this as a way to play the music later on as well. I left it commented out because it literally did the same thing that was already acomplished. It is only there to serve as a proof of concept.<br>
<br>

<h3>External Technologies:</h3><br>
The only external Technology that was used was: Sheet Music for the song the program was based upon - FurElise, by Beethovan, and a piano from my home for a better understanding of the concept.<br>
<br>

<h3>Interal Technologies:</h3><br>
<ul>Libraries and Accessories:
<li>Port Audio (Audio Engine)</li>
  <li>Rsound (Plugin Library)</li>
  <br>
  <br>
  <h3>Understanding My Code</h3>
I wanted to make my program and code easier to understand so I incorperated a small numeric-text-menu in the comments of my code.
If you read my code it will be at the top and will have each section neatly divided with there numeric listings and an explanation of what they do, why they are in my program, and where to find them in my program. I hope this makes things easier to read, understand, follow, and hopefully run my program on your own.<br>
<br>

<h3>Deliverable's and Demonstration's</h3><br>
The goal is for me to be able to stand in front of the class and show them why my program was a good fit for this class. I want to be able to show them what the peices of the program represent in terms of lessons learned in OPL. Following the explanation and incorperation of the lessions and implementations I would like to run the program and show the system-menu and help-text menu that I made. These menu's will allow me to show of all the ablilites of my program and with success I will type in the password that will activate preferably the FurElise in Piano-notes racket.<br>
<br>

<br>
<h3>Architecture</h3>
<img src="https://github.com/DerekR0123/Midi-Keyboard/blob/master/MidiArchitecture.png" width="15%"></img> <br>
<br>
<br>
<h3>Group Responsabilities</h3>
Derek Ross @DerekR0123 <br>
Sole contributor.<br>
<br>
<h3>Citation</h3>
All of the code is written by my self.<br>
All of the things incorperated are my idea's or idea's learned from class lecture in OPL by Fred Martin.<br>
All of the notes and the song are credited to Beethovin. The song is called FurElise.<br>
All of the documentation and other peices of the project are done by my self. <br>
