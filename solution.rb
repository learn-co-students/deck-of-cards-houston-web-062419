# * Construct a class for a `Deck` of cards, which has an attribute `cards` consisting of an array of 52 `Card` objects.  
# * A `Card` consists of a `rank` ("A", "2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K") paired with a `suit` 
# ("Hearts", "Clubs", "Diamonds", "Spades")
# * Your `Deck` should have a method `#choose_card` which selects a random card from the deck and removes it.


# class Deck
#     cards = [{
#         rank: ["A", "2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K"],
#         suit: ["Hearts", "Clubs", "Diamonds", "Spades"]}]

#         def choose_card

# end
require 'pry'


class Deck
    attr_accessor :cards, :suit, :rank, :random_card
    def initialize
      @cards = [].tap do |cards|
        %w(♠︎ ♣︎ ♥︎ ♦︎).each do |suit|
          %w(A 2 3 4 5 6 7 8 9 10 J Q K).each do |rank|
            cards << Card.new(suit, rank)
          end
        end
      end
    end
  
    def choose_card
        choose_card = @cards.sample
        @cards.delete(choose_card)
        
    end

  
end
  
  class Card
    attr_reader :suit, :rank
    @@all = []
    def initialize(suit, rank)
      @suit = suit
      @rank = rank
      @@all << self
    end
    def self.all
        @@all
    end
  end

#   binding.pry