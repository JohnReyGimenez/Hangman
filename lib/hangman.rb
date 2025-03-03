# frozen_string_literal: true

require_relative 'hangman/display'
require_relative 'hangman/game'
require_relative 'hangman/save_load'
require_relative 'hangman/word_bank'

module Hangman
  def self.start
    word_bank = WordBank.new('data/google-10000-english-no-swears.txt')
    game = Game.new(word_bank)
    game.play_game
  end
end

# revised:

# Randomly select a word between 5 and 12 letters.
# Convert the word into an array of characters.
# Create another array of "_" with the same length as the word.
# Player guesses a letter.
# If the letter is in the word:
#   - the "_" array then gets updated if the guess is correct
#   - Display remaining attempts.
# If the letter is incorrect:
#   - Track the mistake.
#   - Display remaining attempts.
# Repeat until:
#   - All letters are guessed (win condition).
#   - Maximum mistakes reached (lose condition).

# board:
# lets say the word is 6 letters
#  _ _ _ _ _ _
# Remaining attempts: #{remaining_attempts}
#              _______
#              ○     |
#             ⎺|⎺    |
#             ╱ ╲    |
#                    |
#                    |
#                    |
