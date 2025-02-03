/*
    Project 01
    
    Requirements (for 15 base points)
    - Create an interactive fiction story with at least 8 knots 
    - Create at least one major choice that the player can make
    - Reflect that choice back to the player
    - Include at least one loop
    
    To get a full 20 points, expand upon the game in the following ways
    [+2] Include more than eight passages
    [+1] Allow the player to pick up items and change the state of the game if certain items are in the inventory. Acknowledge if a player does or does not have a certain item
    [+1] Give the player statistics, and allow them to upgrade once or twice. Gate certain options based on statistics (high or low. Maybe a weak person can only do things a strong person can't, and vice versa)
    [+1] Keep track of visited passages and only display the description when visiting for the first time (or requested)
    
    Make sure to list the items you changed for points in the Readme.md. I cannot guess your intentions!

*/

// This is a simple interactive story following the provided guidelines

VAR character_outlook = -1 //  0 Worried, 1 Non-phased, 2 Confident
VAR weapons = 0
VAR body_power = ""
VAR upgradedpower = ""

-> body_function


== body_function ==

Choose a particular power that interests you. This may or may not help you along the way of your journey!



* [Strong] 

    ~ body_power = "Strong"
    
-> castle_entrance

* [Fast] 

    ~ body_power = "Fast"
    
-> castle_entrance

* [Smart] 

    ~ body_power = "Smart"
    
-> castle_entrance



== upgraded_power ==

Add an upgraded power! This may or may not also help you along the way on your jouryney!



* [Giant]

  ~ upgradedpower = "Giant"
  
-> castle_entrance_2

* [Tiny]

  ~ upgradedpower = "Tiny"


-> castle_entrance_2




== castle_entrance == 
You just woke up whilst laying on the ground a second ago. You start to blink in to what is reality now. You are standing by the entrance of the castle. There are 9 gates that shine in particular color facing towards you. Which gate will you enter? {not sword_pickup: There may be a weapon of some sort lying in one of the halls through the gates.}

Power: {body_power}

You are { advance_character_outlook() }

You have {weapons} weapons

* { character_outlook == -1 } 
-> END

+ [Grab doorhandell to red gate] -> red_gate 

+ [Grab doorhandell to blue gate] -> blue_gate 

+ [Grab doorhandell to green gate] -> green_gate 

+ [Grab doorhandell to yellow gate] -> yellow_gate 

+ [Grab doorhandell to orange gate] -> orange_gate 

+ [Grab doorhandell to purple gate] -> purple_gate 

+ [Grab doorhandell to white gate] -> white_gate 

+ [Grab doorhandell to pink gate] -> pink_gate 

+ [Grab doorhandell to black gate] -> black_gate 

+ [Go back and upgrade - you have been gifted an upgrade power! YOU CAN ONLY CHOOSE NOW!] -> upgraded_power




== castle_entrance_2 == 
You just woke up whilst laying on the ground a second ago. You start to blink in to what is reality now. You are standing by the entrance of the castle. There are 9 gates that shine in particular color facing towards you. Which gate will you enter? {not sword_pickup: There may be a weapon of some sort lying in one of the halls through the gates.}

Upgraded power: {upgradedpower}

Power: {body_power}

You are { advance_character_outlook() }

You have {weapons} weapons

* { character_outlook == -1 } 
-> END

+ [Grab doorhandell to red gate] -> red_gate 

+ [Grab doorhandell to blue gate] -> blue_gate 

+ [Grab doorhandell to green gate] -> green_gate 

+ [Grab doorhandell to yellow gate] -> yellow_gate 

+ [Grab doorhandell to orange gate] -> orange_gate 

+ [Grab doorhandell to purple gate] -> purple_gate 

+ [Grab doorhandell to white gate] -> white_gate 

+ [Grab doorhandell to pink gate] -> pink_gate 

+ [Grab doorhandell to black gate] -> black_gate 



== red_gate ==

You walk down the halwway and theres nothing but pictures hanging on the wall - but - there are many swords laying on the ground?!?



Upgraded power: {upgradedpower}

Power: {body_power}

You are { advance_character_outlook() }

* [ pick up a sword lying on the ground ] -> sword_pickup

+ [Go Back] -> castle_entrance_2

* { character_outlook == 1 } 
-> END



== blue_gate ==

There are a lot of flies in this hallway. You cant see anything except for these bugs! If you have fast power you can zoom through them. If you did - nothing happened - there was a dead end. If you do not have this power - you have turned around and went back to entrance.

Upgraded power: {upgradedpower}

Power: {body_power}

You are { advance_character_outlook() }

* { character_outlook == -1 }
-> END

+ [Go Back] -> castle_entrance_2
-> END



== green_gate ==

There is a toll clock blocking off a glowing object! If you have giant power you can easily see over it - it was just a flashlight someone left there. If you do not have this power - you have turned around and went back to entrance.


Upgraded power: {upgradedpower}

Power: {body_power}

You are { advance_character_outlook() }

* { character_outlook == -1 }
-> END

+ [Go Back] -> castle_entrance_2
-> END



== yellow_gate ==

There is a boulder in the way. If you have strong power you can lift the boulder. If you do - there happened to be an empty treasure chest. If you do not have this power - you have turned around and went back to entrance.




Upgraded power: {upgradedpower}

Power: {body_power}

You are { advance_character_outlook() }

* { character_outlook == -1 }
-> END

+ [Go Back] -> castle_entrance_2
-> END



== orange_gate ==

There is a lot of old clothes in here!?! This will not help you figure out where you are!? Head back to entrance.



Upgraded power: {upgradedpower}

Power: {body_power}

You are { advance_character_outlook() }

* { character_outlook == -1 }
-> END

+ [Go Back] -> castle_entrance_2
-> END



== purple_gate ==

There is a scroll on a ledge, it looks like theres something behind it but you have to read it first to unlock the object. It is in hyroglyphics. If you have smart power you can read it and see what is behind it - there was a granola bar. Head back to entrance. If you do not have this power - you have turned around and went back to entrance.



Upgraded power: {upgradedpower}

Power: {body_power}

You are { advance_character_outlook() }

* { character_outlook == -1 }
-> END

+ [Go Back] -> castle_entrance_2
-> END



== white_gate ==
There is a small hole that looks mysterious. If you have tiny power you can walk in - you found nothing but cheese. Head back to entrance. If you do not have this power - you have turned around and went back to entrance.


Upgraded power: {upgradedpower}

Power: {body_power}

You are { advance_character_outlook() }

* { character_outlook == -1 }
-> END

+ [Go Back] -> castle_entrance_2
-> END



== pink_gate ==

WOAH. There are a ton of dead fish!? *You cannot eat these* head back to entrance.

Upgraded power: {upgradedpower}

Power: {body_power}

You are { advance_character_outlook() }

* { character_outlook == -1 }
-> END

+ [Go Back] -> castle_entrance_2
-> END



== black_gate ==

There is a ginermous goblin guarding a portal in this hallway!!!




Upgraded power: {upgradedpower}

Power: {body_power}


* {weapons > 0} [slash the goblin with sword] -> black_gate_portal


You are { advance_character_outlook() }

* { character_outlook == -1 }
-> END

+ [Go Back] -> castle_entrance_2
-> END



== sword_pickup == 

You picked up a sword!



Upgraded power: {upgradedpower}

Power: {body_power}

You are { advance_character_outlook() }

~ weapons = weapons + 1

+ [Go Back] -> castle_entrance_2

* { character_outlook == 1 }
-> END


== black_gate_portal ==

You have entered the portal. You are now back in your bedroom. So, that had to be a dream!?


-> DONE

== function advance_character_outlook ==

    ~ character_outlook = character_outlook + 1
    
    {
        - character_outlook > 2:
            ~ character_outlook = 0
    }    
    
    {    
        - character_outlook == 0:
            ~ return "Worried"
        
        - character_outlook == 1:
            ~ return "Non-phased"
        
        - character_outlook == 2:
            ~ return "Confident"
    
    }
    
        
    ~ return character_outlook




