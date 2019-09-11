class Game < ApplicationRecord
belongs_to :developer
has_many :purchases
has_many :gamers, through: :purchases
validates :game, presence: true
validates :game, uniqueness: true
validates :developer, presence: true
end
