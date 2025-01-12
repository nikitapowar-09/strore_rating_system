class User < ApplicationRecord
  has_secure_password

  has_many :ratings
  has_many :rated_stores, through: :ratings, source: :store

  validates :name, length: { minimum: 20, maximum: 60 }
  validates :address, length: { maximum: 400 }
  validates :email, presence: true, uniqueness: true, format: { with: URI::MailTo::EMAIL_REGEXP }
  validates :password, length: { in: 8..16 }, format: { with: /\A(?=.*[A-Z])(?=.*[\W])/, message: "must include 1 uppercase letter and 1 special character" }

  enum role: { admin: 0, normal_user: 1, store_owner: 2 }
end
