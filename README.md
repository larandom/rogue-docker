# rogue-docker

Rogue the game that spawned a genre, was developed in the 1980s by Michael C. Toy, Kenneth C. R. C. Arnold, and Glenn Wichman.

Rogue is a computer fantasy game with a new twist. It is CRT oriented and the object of the game is to survive the attacks of various monsters and get a lot of gold, rather than the puzzle solving orientation of most computer fantasy games. To get started you really only need to know two commands. The command ? will give you a list of the available commands and the command / will identify the things you see on the screen.

To win the game (as opposed to merely playing to beat other people's high scores) you must locate the Amulet of Yendor which is somewhere below the 20th level of the dungeon and get it out.

alias rogue="docker run -it -v $HOME/.rogue:/home/rogue larandom/rogue"

You can save your game at any time using SHIFT+s, and reload by running "rogue -r rogue.save".

BUGS: PROBABLY INFINITE (ALTHOUGH COUNTABLY INFINITE). HOWEVER, THAT ICE MONSTERS SOMETIMES TRANSFIX YOU PERMANENTLY IS NOT A BUG. IT'S A FEATURE.
