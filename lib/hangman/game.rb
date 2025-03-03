# frozen_string_literal: true

module Hangman
  class Game
    def initialize
      @contents = File.read('google-10000-english-no-swears.txt ').split("\n")
      @secret_word = select_word
      @guessed_letters = Array.new(@secret_word.length, '_')
      @remaining_attempts = 6
      @incorrect_guesses = []
      @display = Display.new
      @save_load = SaveLoad.new
    end

    def play_game
      loop do
        @display.display_board(@guessed_letters, @incorrect_guesses, @remaining_attempts)
        input = player_input

        if input == 'save'
          @save_load
          break
        end
      end
    end

    def player_input
      puts 'Enter a letter for your guess'
      input = gets.chomp.downcase

      until input.length == 1 && input >= 'a' && input <= 'z'
        puts 'Invalid input. Please enter a single letter'
        input = gets.chomp.downcase
      end

      input
    end

    def check_guess(letter)
      if @secret_word.include?(letter)
        @secret_word.chars.each_with_index do |char, index|
          @guessed_letters[index] = char if char == letter
        end
        true
      else
        @incorrect_guesses << letter
        false
      end
    end
  end
end
