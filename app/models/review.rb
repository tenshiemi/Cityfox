class Review < ActiveRecord::Base
	belongs_to :user
	belongs_to :company

	validates :title, presence: true
	validates :description, presence: true
	validates :would_work_with, presence: true
	validates :user_id, presence: true
	validates :company_id, presence: true
	validates :rating_payment, presence: true
	validates :rating_communication, presence: true
	validates :rating_expectations, presence: true

end
