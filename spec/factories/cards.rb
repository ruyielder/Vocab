FactoryGirl.define do
  factory :card do
    first { Faker::Lorem.word }
    second { Faker::Lorem.word }
  end
end