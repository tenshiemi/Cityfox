class Company < ActiveRecord::Base
	has_many :reviews
	has_many :users

	validates :name, presence: true
	validates :country, presence: true
	validates :city, presence: true
end
