# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :question do
    text { Faker::Lorem.sentence.chop + "?" }
    survey
  end
end
