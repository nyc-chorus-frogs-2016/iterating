class Deck < ActiveRecord::Base
  has_many :rounds
  has_many :cards

  def select_random_card
    not_answered_correctly_cards = []
    self.cards.each do |card|
      if (card.guesses.select {|guess| guess.is_correct == true}).empty?
        not_answered_correctly_cards << card
      end
    end
    rand(not_answered_correctly_cards)
  end
end




#choose all the cards that belong to the deck -> self.cards

