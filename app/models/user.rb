class User < ActiveRecord::Base
  authenticates_with_sorcery!

  has_many :reviews
  belongs_to :company

  validates :password, length: { minimum: 3 }
  validates :password, confirmation: true
  validates :password_confirmation, presence: true

  validates :email, uniqueness: true
  validates :name, presence: true

  before_save :default_values
  
  def default_values
    self.role ||= :normal
  end
end
