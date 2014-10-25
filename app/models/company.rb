class Company < ActiveRecord::Base
	has_many :reviews
	has_many :users
end
