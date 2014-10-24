class User < ActiveRecord::Base
  authenticates_with_sorcery!

  has_many :reviews

  validates :password, length: { minimum: 3 }
  validates :password, confirmation: true
  validates :password_confirmation, presence: true

  validates :email, uniqueness: true
  validates :name, presence: true
end
