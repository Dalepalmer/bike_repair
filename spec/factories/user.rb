FactoryGirl.define do
  factory :user do
    email { "test@test.com" }
    phone { "32324344"}
    name { "french fry" }
    password { "password" }
    password_confirmation { "password" }
    provider { email }
    uid { email }
    factory :confirmed_user do
      confirmed_at Time.zone.now
    end
  end
end
