class Review < ActiveRecord::Base
	belongs_to :user
	belongs_to :company

	validates :title, presence: true, length: { in: 2..120 }
	validates :description, presence: true, length: { maximum: 500 }
	validates :would_work_with, presence: true
	validates :user_id, presence: true
	validates :company_id, presence: true
	validates :rating_payment, presence: true
	validates :rating_communication, presence: true
	validates :rating_expectations, presence: true

	before_validation :calculate_rating

	private
	def calculate_rating
    self.rating_overall = (self.rating_payment + self.rating_communication + self.rating_expectations) / 3
  end
end
