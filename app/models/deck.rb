class Deck < ActiveRecord::Base
  has_many :rounds
  has_many :cards
  has_many :users, through: :rounds
<<<<<<< HEAD
  validates :name, presence: true
=======
>>>>>>> origin/master
end
