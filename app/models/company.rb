class Company < ActiveRecord::Base
	has_many :reviews
	has_many :users

	validates :name, presence: true
	validates :country, presence: true
	validates :city, presence: true

	def rating
		rating_count = self.reviews.count
		positive_ratings = self.reviews.where(would_work_with: true).count
		(positive_ratings.to_f / rating_count * 100).to_i
	end
end
