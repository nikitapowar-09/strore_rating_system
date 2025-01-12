class Store < ApplicationRecord
  has_many :ratings
  has_many :users, through: :ratings

  validates :name, presence: true, length: { maximum: 60 }
  validates :email, presence: true, uniqueness: true, format: { with: URI::MailTo::EMAIL_REGEXP }
  validates :address, length: { maximum: 400 }
end
