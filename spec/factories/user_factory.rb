FactoryBot.define do
  factory :user do
    first_name { 'Ana' }
    last_name { 'Banana'}
    email { 'user@test.com' }
    password { '$p@ssw0rd' }
  end
end
