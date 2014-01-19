# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :survey do
    name { Faker::Lorem.sentence }
    respondent_age { rand 100 }
    respondent_gender { ["m", "f"].sample }
  end
end
