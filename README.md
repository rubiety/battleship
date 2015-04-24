# SDRuby Battleship Magic Night

For this challenge head over to [https://github.com/magicnights/battleship](https://github.com/magicnights/battleship), fork the repo and start hacking.


## Let's play battleship.

Your challenge is to build a [battleship game][wiki_page] that a user can play against the computer. This challenge will have several levels. However, we expect most people to only complete defcon 1 level. The other levels are for those who have the time, or want to expand upon the challenge outside of the meeting.

### Defcon 1:

Build a battleship game with the following rules.

1. The game will be build for the terminal or a web app.
2. A user will play against the computer.
3. The computer will place five (5) ships ( out of the six (6) ships available — choosen at random ) on a sixteen by sixteen (16x16) board. The ships can only be place horizontally or vertically; ships can not be placed diagonally. Ships may not intersect each other. These ships are:
  1. Aircraft Carrier — which will take up five  (5) contiguous spots.
  2. Battleship       — which will take up four  (4) contiguous spots.
  3. Submarine        — which will take up three (3) contiguous spots.
  4. Destroyer        — which will take up three (3) contiguous spots.
  5. Cruiser          — which will take up three (3) contiguous spots.
  6. Patrol Boat      — which will take up two   (2) contiguous spots.
4. The player will be given six (6) rounds to sink all the computers ships.
  1. Each round will consist of the player entering in five (5) different spots.
  2. After all five (5) locations have been entered the computer will let the player know which shots (if any) hit ships, and which ships the player managed to sink. Granting the points associated with each ship the player managed to sink. The player will, also, lose one (1) point for each missed shot for that round.
5. If the player manages to sink all the computers ship before the end of the sixth (6th) round, the player wins. Other wise the computer wins. Tally up the score and display it.

<table border=1 cellpadding=2>
<caption>Ship Attributes</caption>
<tr><th>Name</th><th>Size</th><th>Points</th></tr>
<tr><td>Aircraft Carrier</td><td>5</td><td>20</td></tr>
<tr><td>Battleship</td><td>4</td><td>12</td></tr>
<tr><td>Submarine</td><td>3</td><td>6</td></tr>
<tr><td>Destroyer</td><td>3</td><td>6</td></tr>
<tr><td>Crusier</td><td>3</td><td>6</td></tr>
<tr><td>Patrol Boat</td><td>2</td><td>2</td></tr>
</table>

### Defcon 2:

Let's add a simple leader board to the game.

Add the following features:

1. Ask the player for a name, when the first starts up.
2. Save the players score to a database of your choosing, and display the last ten (10) high scores, at the end of each game.

### Defcon 3:

Add graphics to the game

1. Draw the board, and refresh it instead of redrawing it everytime.
2. *Bonus* Allow the user to enter in the coordinates using the mouse.

### Defcon 4:

Let's allow people to play againt each other.

1. Enable multiplayer support. Allow people connect to your/a server to play against each other, create game, and see games that are going on.

[wiki_page]: https://en.wikipedia.org/wiki/Battleship_(game) "Battleship the board game"

