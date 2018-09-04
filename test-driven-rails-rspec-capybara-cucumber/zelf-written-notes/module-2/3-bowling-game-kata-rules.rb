What is a Code Kata?
  - an exercise you work on multiple times
  - each time you focus on different aspects:
    * different solution
    * getting better  at tools
    * new programming language
    * use of another paradigm (like TDD) --> what we will do

Task:

  create a class that will count the scores of each rol and sum them in one game
    vb: game = BowlingGame.new

  we put add each roll to an array of a game
    vb: erland_game = [1,4,6,4,5,5,10,0,1,7,3,6,4,10,2,8,6]
    vb: peter_game = [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]

  we calculate the score
    vb: game.rolls(erland_game).score #=> 133
    vb: game.rolls(peter_game).score #=> 0

The game rules:

* 10 turns
* 2 rolls/turn
* spare (knock down all pins in 2 rolls => + next roll)
* strike (knock down all pins in 1 roll => + next 2 rolls)
* last turn:
   spare == 1 additional roll
   strike == 2 additional rolls
    vb:
    turn 1:
      roll 1 = 1 #=> 1
      roll 2 = 4 #=> 5
      TOTAL= 5

    turn 1:
      roll 1 = 4 #=> 4
      roll 2 = 5 #=> 9
      TOTAL= 14

    turn 3:
      roll 1 = 6 #=> 6(turn 3)
      roll 2 = 4 (spare activated) #=> 10(turn 3)
      TOTAL= 29

    turn 4:
      roll 1 = 5 (turn 3.spare) && (turn 4) #=> 15(turn 3) and 5(turn 4)
      roll 2 = 5 (spare activated #=> 10(turn4)
      TOTAL= 49

    turn 5:
      roll 1 = 10 (turn 4.spare) && (turn 5.strike) #=> 20(turn 4) and 10(turn 5)
      roll 2 = n/a
      TOTAL= 60

    turn 6:
      roll 1 = 0 (turn 5.strike) && (turn 6) #=> 10(turn 5) and 0(turn 6)
      roll 2 = 1 (turn 5.strike) && (turn 6) #=> 11(turn 5) and 1(turn 6)
      TOTAL= 61
    turn 7:
      TOTAL = 77

    turn 8:
      TOTAL = 97

    turn 9:
      roll 1 = 10
      roll 2 = n/a
      TOTAL = 117 #=> 20

    turn 10:
      roll 1 = 2
      roll 2 = 8
      roll 3 = 6 #=> 16
      TOTAL = 133

Three possible games
  1. Gutter game = 0
  2. Normal game = like erland_game
  3. Perfect game = 300


