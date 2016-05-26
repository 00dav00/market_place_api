FactoryGirl.define do
  factory :user do
    email { FFaker::Internet.email }
    password "12345678"
    password_confirmation "12345678"
    auth_token { Random.rand(100000...4200000) }
  end
end
