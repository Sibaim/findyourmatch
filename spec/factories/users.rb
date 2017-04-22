FactoryGirl.define do
  factory :user do
    name     { Faker::Internet.name }
    email    { Faker::Internet.email }
    password { Faker::Internet.password }
    is_admin false
  end
end
