# Hangman
Welcome to Hangman, a classic word-guessing game where you try to guess a secret word before running out of attempts. This project is implemented in Ruby and features a simple command-line interface.
---

## Table of Contents
1. [How to Play](#how-to-play)
2. [Local Setup](#local-setup)
3. [Known Issues](#known-issues)
4. [Optimizations](#optimizations)
5. [Lessons Learned](#lessons-learned)
6. [Running the Game](#running-the-game)
7. [Running Tests](#running-tests)
8. [Credits](#credits)
9. [Licence](#License)

---

## How to Play
Hangman is a single-player game where you guess letters to reveal a secret word. You have 6 attempts to guess the word correctly. If you guess all the letters before running out of attempts, you win! Otherwise, you lose.

### Game Flow
1. Start the game by running the program.

2. Choose to start a new game or load a saved game.

3. If starting a new game:

  -A secret word is randomly selected.

  -The word is displayed as underscores (_ _ _ _ _), representing each letter.

4. Guess a letter by typing it and pressing Enter.

  -If the letter is in the word, it will be revealed in the correct position(s).

  -If the letter is not in the word, you lose an attempt.

5. You can type 'save' at any time to save your progress and exit the game.

7. If you guess all the letters before running out of attempts, you win!

9. If you run out of attempts, you lose, and the secret word is revealed.

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
  -Added the ability to save and load the game state using Ruby's Marshal module.
  -Ensured the game state is restored correctly when loading.

### Input Validation:
  -Improved input validation to ensure only valid letters or the 'save' command are accepted.

### Modular Code:
  -Separated the game logic into modular classes (Game, Display, SaveLoad, WordBank) for better readability and maintainability.

### ASCII Art:
  -Added ASCII art for the hangman figure to make the game more visually appealing.
---

## Lessons Learned
--  Serialization: Learned how to use Ruby's Marshal module to save and load game states.

-- **Modular Design: Gained experience in organizing code into modular classes for better maintainability.

-- **User Input Handling:** Improved skills in validating and processing user input in a command-line application.

-- **Error Handling:** Developed strategies for handling edge cases and ensuring the game runs smoothly.


---

## Running Tests
This project does not currently include a test suite. However, you can manually test the game by playing through different scenarios (e.g., guessing the code, creating a code for the computer to guess).

---

## Credits
- **Developer**: John Rey G. Gimenez
- **Inspiration**: Classic Han game.
- **Tools**: Ruby, `colorize` gem.

---

### License
This project is open-source and available under the  [MIT License](LICENSE).

---

Enjoy playing Mastermind! If you have any questions or feedback, feel free to reach out.
