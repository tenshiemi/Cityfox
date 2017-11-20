require 'faker'

FactoryBot.define do
  factory :user do
    name                   { Faker::Name.name } # Why using lamdba here?
    email                 { Faker::Internet.email }
    password               "aSuPeRsEcUrEpAsSwOrd"
    password_confirmation "aSuPeRsEcUrEpAsSwOrd"
  end

  factory :owner do
    name                   { Faker::Name.name } # Why using lamdba here?
    email                 { Faker::Internet.email }
    company_id            1
    role                  :owner
    password               "aSuPeRsEcUrEpAsSwOrd"
    password_confirmation "aSuPeRsEcUrEpAsSwOrd"
  end
end
