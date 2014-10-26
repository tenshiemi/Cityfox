# spec/models/user.rb
# require 'spec_helper'

describe Company do
	it "has a valid factory" do
		expect(build(:company).valid?).to be true
	end

	it "is invalid without a name" do
		expect(build(:company, name: nil).valid?).to be false
	end

	it "is invalid without an country" do
		expect(build(:company, country: nil).valid?).to be false
	end

	it "is invalid without an city" do
		expect(build(:company, city: nil).valid?).to be false
	end
end