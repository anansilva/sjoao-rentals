FactoryBot.define do
  factory :booking do
    check_in { 1.month.from_now }
    check_out { 1.month.from_now + 5.days }
    number_of_adults { 2 }
    association :user
  end
end
