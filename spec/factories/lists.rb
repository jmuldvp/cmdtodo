FactoryGirl.define do
  factory :list do
    name Faker::Hacker.abbreviation
    user
  end
end
