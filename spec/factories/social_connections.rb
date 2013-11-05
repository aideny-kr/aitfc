# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :social_connection do
    user "MyString"
    provider "MyString"
    uid 1
  end
end
