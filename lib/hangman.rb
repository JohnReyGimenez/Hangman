# frozen_string_literal: true

require_relative 'hangman/display'
require_relative 'hangman/game'
require_relative 'hangman/save_load'
require_relative 'hangman/word_bank'

module Hangman
  def self.start
    puts 'welcome to Hangman.'
    puts '1. New game'
    puts '2. Load game'
    choice = gets.chomp.to_i

    case choice
    when 1
      start_new_game
    when 2
      load_saved_game
    else
      puts 'Invalid choice. Exiting.'
    end
  end

  def self.start_new_game
    word_bank = WordBank.new('data/google-10000-english-no-swears.txt')
    game = Game.new(word_bank)
    game.play_game
  end

  def self.load_saved_game
    save_load = SaveLoad.new
    game = save_load.load_game

    if game
      pus 'Game Loaded.'
      game.play_game
    else
      puts 'No saved file found, starting new game instead.'
      start_new_game
    end
  end
end
