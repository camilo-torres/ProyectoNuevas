class Purchase < ApplicationRecord
  belongs_to :gamer
  belongs_to :game
validates :nickname, presence: true
validates :game, presence: true
validates :unitss, presence: true
validates :unitss, numericality: true
scope :sold, ->{ where(unitss: !0)}
end
