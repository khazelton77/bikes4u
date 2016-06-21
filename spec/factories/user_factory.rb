FactoryGirl.define do
  factory :user do
    email "factory@girl222.com"
    password "123456"
    first_name "Jane"
    last_name "Doe"
    admin false
  end
end
