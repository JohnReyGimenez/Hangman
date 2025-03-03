# frozen_string_literal: true

module Hangman
  class WordBank
    def initialize(file_path)
      @contents = File.read(file_path).split("\n")
    end

    def select_word
      valid_word = @contents.select { |word| word.size >= 5 && word.size <= 12 }
      valid_word.sample
    end
  end
end
