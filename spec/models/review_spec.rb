# spec/models/user.rb
# require 'spec_helper'

describe Review do
	it "has a valid factory" do
		expect(build(:review).valid?).to be true
	end

	it "is invalid without a title" do
		expect(build(:review, title: nil).valid?).to be false
	end

	it "is invalid without an description" do
		expect(build(:review, description: nil).valid?).to be false
	end

	it "is invalid without an company_id" do
		expect(build(:review, company_id: nil).valid?).to be false
	end

	it "is invalid without an would_work_with" do
		expect(build(:review, would_work_with: nil).valid?).to be false
	end
end