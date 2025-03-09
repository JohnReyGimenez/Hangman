# Hangman

Welcome to Hangman, a classic word-guessing game where you try to guess a secret word before running out of attempts. This project is implemented in Ruby and features a simple command-line interface.

---

## Table of Contents
1. [How to Play](#how-to-play)
2. [Local Setup](#local-setup)
3. [Optimizations](#optimizations)
4. [Lessons Learned](#lessons-learned)
5. [Running the Game](#running-the-game)
6. [Running Tests](#running-tests)
7. [Credits](#credits)
8. [Licence](#License)

---

## How to Play
Hangman is a single-player game where you guess letters to reveal a secret word. You have 6 attempts to guess the word correctly. If you guess all the letters before running out of attempts, you win! Otherwise, you lose.

### Game Flow
1.**Start the Game:**

- Run the program by executing ruby main.rb.
- You will be greeted with a welcome message and a menu:
   ```bash
  Copy
  Welcome to Hangman!
  1. New Game
  2. Load Game
2.**Choose an Option:**

- Select 1 to start a new game.
- Select 2 to load a saved game.

3.**New Game:**

- A secret word is randomly selected from the dictionary.
- The word is displayed as underscores (_ _ _ _ _), representing each letter.

- Example:
  ```bash
  Word: _ _ _ _ _
  Remaining attempts: 6
4.**Guess a Letter:**

- You will be prompted to enter a letter:
  ```bash
  Enter a letter for your guess, or type 'save' to save the game:
- Type a single letter (e.g., a) and press Enter.
- If the letter is in the word, it will be revealed in the correct position(s).
  ```bash
  Word: _ a _ _ _
  Remaining attempts: 6
  
If the letter is not in the word, you lose an attempt.\
  ```bash
  Word: _ a _ _ _
  Remaining attempts: 5
```

5.**Save the Game:**
- At any point, you can type 'save' to save your progress and exit the game.
Example:
 ```bash
Enter a letter for your guess, or type 'save' to save the game:
save
Game saved.
```
6.**Load a Saved Game:**

- If you choose to load a saved game, the game state will be restored.
- Example:
  ```bash
  Welcome to Hangman!
  1. New Game
  2. Load Game
  2
  Game loaded!
  Word: _ a _ _ _
  Remaining attempts: 5
7.**Win the Game:**
- If you guess all the letters before running out of attempts, you win!
- Example:
  ```bash
  Word: h a n g m a n
  You won!! The word was hangman
8.**Lose the Game:**
- If you run out of attempts, you lose, and the secret word is revealed.
- Example:
  ```bash
  Word: _ a _ _ _
  Remaining attempts: 0
  You lost! The word was apple

---

## Local Setup

### Prerequisites
- **Ruby**: Ensure Ruby is installed on your system.
   ```bash
  ruby -v
- **Bundler**: Install Bundler to manage dependencies.
  ```bash
   gem install bundler
---

## Running the Game
To run the game locally, execute the main file. Follow the on-screen instructions to play.

### Steps
1. Fork the Repository:
   - Go to the [Hangman](https://github.com/JohnReyGimenez/Hangman) repository and click the Fork button to create your own copy of the project.
2. Clone the repository.
   ```bash
   git clone git@github.com:JohnReyGimenez/Hangman.git
3. Navigate to the project directory.
   ```bash
   cd Hangman
4. Install dependencies using Bundler.
   ```bash
   bundle install
5. Run the game.
   ```bash
   ruby main.rb

---

## Optimizations
Here are the key optimizations made during development:
### Save/Load Feature:
  - Added the ability to save and load the game state using Ruby's Marshal module.
  - Ensured the game state is restored correctly when loading.

### Input Validation:
  - Improved input validation to ensure only valid letters or the 'save' command are accepted.

### Modular Code:
  - Separated the game logic into modular classes (Game, Display, SaveLoad, WordBank) for better readability and maintainability.

### ASCII Art:
  - Added ASCII art for the hangman figure to make the game more visually appealing.
---

## Lessons Learned
--  **Serialization:** Learned how to use Ruby's Marshal module to save and load game states.

-- **Modular Design:** Gained experience in organizing code into modular classes for better maintainability.

-- **User Input Handling:** Improved skills in validating and processing user input in a command-line application.

-- **Error Handling:** Developed strategies for handling edge cases and ensuring the game runs smoothly.


---

## Running Tests
This project does not currently include a test suite. However, you can manually test the game by playing through different scenarios (e.g., guessing the code, creating a code for the computer to guess).

---

## Credits
- **Developer**: John Rey G. Gimenez
- **Inspiration**: Classic Hangman game.
- **Tools**: Ruby

---

### License
This project is open-source and available under the  [MIT License](LICENSE).

---

Enjoy playing Mastermind! If you have any questions or feedback, feel free to reach out.
