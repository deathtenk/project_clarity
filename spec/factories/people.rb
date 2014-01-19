# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :person do
    name { Faker::Name.name }
    age { rand(100) }
  end
end
