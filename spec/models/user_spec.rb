# spec/models/user.rb
# require 'spec_helper'

describe User do
	it "has a valid factory" do
		expect(build(:user).valid?).to be true
	end
	it "is invalid without a name"
	it "is invalid without an email"
end