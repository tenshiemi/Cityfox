class Review < ActiveRecord::Base
  belongs_to :user
  belongs_to :company

  before_validation :calculate_rating

  validates :title, presence: true, length: { in: 2..120 }
  validates :description, presence: true, length: { maximum: 500 }
  validates_presence_of :rating_payment, :rating_communication, :rating_expectations,
                        :user_id, :company_id, :rating_overall
  validates_inclusion_of :would_work_with, :in => [true, false]

  private
  def calculate_rating
    self.rating_overall = (self.rating_payment + self.rating_communication + self.rating_expectations) / 3
  end
end
