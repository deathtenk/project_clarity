# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :survey do
    name "MyString"
    respondent_age 1
    respondent_gender "MyString"
  end
end
