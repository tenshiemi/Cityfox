class User < ActiveRecord::Base
  authenticates_with_sorcery!

  has_many :reviews
  belongs_to :company

  validates :password, confirmation: true, presence: true, 
            length: { minimum: 3 }, :on => :create

  validates :email, presence: true, uniqueness: true
  validates :name, presence: true

  before_save :default_values
  
  private
  def default_values
    self.role ||= :normal
  end
end
