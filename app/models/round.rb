class Round < ActiveRecord::Base
  belongs_to :user
  belongs_to :deck
  has_many :guesses
  has_many :cards, through: :guesses

  def finished_deck
    # if self.correct_guesses == deck.count
    #   redirect '/'
    # end
  end

  def count_correct_guesses
    @correct_guesses = self.guesses.select{|guess| guess.is_correct}
    @correct_guesses.count
  end

  def total_guesses
    @total_guesses = self.guesses
    @total_guesses.count
  end
end
