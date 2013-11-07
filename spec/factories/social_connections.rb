# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :social_connection do
    user_id 1
    
    provider "MyString"
    uid 1
    follows true
   	follower true
  end
end
