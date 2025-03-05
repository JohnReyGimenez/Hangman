# frozen_string_literal: true

module Hangman
  class Display
    def display_board(guessed_letters, incorrect_guesses, remaining_attempts)
      puts "Word: #{guessed_letters.join(' ')}"
      puts "Incorrect guesses: #{incorrect_guesses.join(', ')}" unless incorrect_guesses.empty?

      puts "Remaining attempts: #{remaining_attempts}"
      display_hangman
    end

    def display_hangman(remaining_attempts)
      case remaining_attempts
      when 6
        puts <<~HANGMAN
            _______
            |     |
            |
            |
            |
            |
            |
          __|__
        HANGMAN
      when 5
        puts <<~HANGMAN
            _______
            |     |
            |     ○
            |
            |
            |
            |
          __|__
        HANGMAN
      when 4
        puts <<~HANGMAN
            _______
            |     |
            |     ○
            |     |
            |
            |
            |
          __|__
        HANGMAN
      when 3
        puts <<~HANGMAN
            _______
            |     |
            |     ○
            |    ⎺|⎺
            |
            |
            |
          __|__
        HANGMAN
      when 2
        puts <<~HANGMAN
            _______
            |     |
            |     ○
            |    ⎺|⎺
            |    ╱
            |
            |
          __|__
        HANGMAN
      when 1
        puts <<~HANGMAN
            _______
            |     |
            |     ○
            |    ⎺|⎺
            |    ╱ ╲
            |
            |
          __|__
        HANGMAN
      when 0
        puts <<~HANGMAN
            _______
            |     |
            |     ○
            |    ⎺|⎺
            |    ╱ ╲
            |
            |
          __|__
        HANGMAN
      end
    end
  end
end
