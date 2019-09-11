class Developer < ApplicationRecord
has_many :games
validates :name, presence: true
validates :name, uniqueness: true
validates :country, presence: true
end
