require 'faker'

FactoryGirl.define do
  factory :user do
    name     { Faker::Name.name } # Why using lamdba here?
    email     { Faker::Internet.email }
    password "aSuPeRsEcUrEpAsSwOrd"
    password_confirmation "aSuPeRsEcUrEpAsSwOrd"
  end
end