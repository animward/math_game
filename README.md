# math_game


Example prompt:

Player 1: What does 5 plus 3 equal?
> 9
PLayer 1: Seriously? No!
P1: 2/3 vs P2: 3/3
----- NEW TURN -----
Player 2: What does 2 plus 6 equal?
> 8
Player 2: YES! You are correct.
P1: 2/3 vs P2: 3/3
----- NEW TURN -----
... some time later ...
Player 1 wins with a score of 1/3
----- GAME OVER -----
Good bye!

### Player Class:

**Information Relevant**:
- Player's name
- Remaining lives

**Initialization**:
- The player class needs to be initialized with the player's name.

**Public Methods**:
1. `initialize(name)`: Initializes a player with the given name and 3 lives.
2. `answer_question(answer)`: Checks if the player's answer to the math problem is correct and adjusts the player's lives accordingly.
3. `lose_life()`: Decrements the player's remaining lives by 1.
4. `remaining_lives()`: Returns the number of remaining lives for the player.

### MathProblem Class:

**Information Relevant**:
- Two random numbers for the addition problem

**Initialization**:
- No specific initialization is needed for this class.

**Public Methods**:
1. `generate_problem()`: Generates two random numbers between 1 and 20 for the addition problem.
2. `validate_answer(answer)`: Checks if the answer provided by the player is correct.

### Game Class:

**Information Relevant**:
- Names of the players
- Current player
- Scores of the players

**Initialization**:
- The game class needs to be initialized with the names of the two players.

**Public Methods**:
1. `initialize(player1_name, player2_name)`: Initializes the game with two players, each with 3 lives.
2. `start_game()`: Starts the game loop, where players take turns answering math problems until one player loses all their lives.
3. `switch_turn()`: Switches the current player's turn.
4. `announce_winner()`: Announces the winner of the game and the scores of both players.
5. `game_over?()`: Checks if the game is over (i.e., one player has lost all their lives).
6. `display_scores()`: Displays the current scores of both players after each turn.
7. `reset_game()`: Resets the game state for a new game.
