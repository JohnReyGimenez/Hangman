# frozen_string_literal: true

module Hangman
  class Game
    attr_reader :secret_word, :guessed_letters, :incorrect_guesses, :remaining_attempts

    def initialize(word_bank)
      @contents = word_bank.select_word
      @secret_word = word_bank.select_word
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

        if input == 'save' # saves game input
          @save_load.save_game(self)
          break
        elsif check_guess(input)
          if guessed_letters.none? { |letter| letter == '_' }
            puts "You won!! the word was #{@secret_word}"
            break
          end
        else
          @remaining_attempts -= 1
          if @remaining_attempts == 0
            puts "you lost! the word was #{secret_word}"
            break
          end
        end
      end
    end

    def player_input
      puts "Enter a letter for your guess, or type 'save' to save the game:"
      input = gets.chomp.downcase

      until (input.length == 1 && input >= 'a' && input <= 'z') || input == 'save'
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
