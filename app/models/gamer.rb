class Gamer < ApplicationRecord
has_secure_password
has_many :purchases
has_many :games, through: :purchases
validates :nickname, presence: true
validates :nickname, uniqueness: true
validates :password, presence: true
validates :password, length: { minimum: 8 }
validates :email, presence: true
validates :email, uniqueness: true
validates :email, format: { with: URI::MailTo::EMAIL_REGEXP,
    message: "no es una direccion de correo valida" }
validates :country, presence: true
scope :nickname, -> { where(nickname: true) }
end
