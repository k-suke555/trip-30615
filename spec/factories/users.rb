FactoryBot.define do
  factory :user do
    nickname              { 'tanaka' }
    email                 { 'tanaka@sample.com' }
    password              { '123abc' }
    password_confirmation { password }
  end
end
