FactoryGirl.define do
  factory :box do
    title { Faker::Name.title }
  end
end