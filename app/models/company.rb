class Company < ActiveRecord::Base
	has_many :reviews
	has_many :users

	validates :name, presence: true
	validates :country, presence: true
	validates :city, presence: true

	def rating
		total = self.reviews.count
		positive_reviews = self.reviews.where(would_work_with: true).count
		(positive_reviews.to_f / total * 100).to_i
	end
end
