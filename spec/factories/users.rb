FactoryBot.define do
  factory :user do
    name { "Leia" }
    email { "Leia@email.com" }
    password { "Han Solo" }
    password_confirmation { "Han Solo" }
  end
end
