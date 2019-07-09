class Deck
    attr_accessor :cards
    def initialize

        

        @cards = []

        suits = ["Hearts", "Clubs", "Diamonds", "Spades"]
        ranks = ["A", "2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K"]

        suits.each do |suit|
            ranks.each do |rank|
                card = Card.new(suit, rank)
                @cards <<card
            end
        end

    end

    def choose_card
        choose_card = @cards.sample
        @cards.delete(choose_card)
    end
end

class Card

    attr_accessor :suit, :rank

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
