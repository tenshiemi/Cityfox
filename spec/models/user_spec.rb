# spec/models/user.rb
# require 'spec_helper'

describe User do
	it "has a valid factory" do
		expect(build(:user).valid?).to be true
	end

	it "is invalid without a name" do
		expect(build(:user, name: nil).valid?).to be false
	end

	it "is invalid without an email" do
		expect(build(:user, email: nil).valid?).to be false
	end

	it "is invalid without an password" do
		expect(build(:user, password: nil).valid?).to be false
	end

	it "is invalid when passwords don't match" do
		expect(build(:user, password_confirmation: "wOoPs").valid?).to be false
	end

	it "defaults to :normal role" do
		user = create(:user)
		expect(user.role).to equal :normal
	end

	it "does not allow duplicate email address" do
		user = create(:user, email: "a@test.com")
		user2 = build(:user, email: "a@test.com")
		expect(user2.valid?).to be false
	end
end