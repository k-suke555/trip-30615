FactoryBot.define do
  factory :plan do
    title              { '福岡市内のんびり旅' }
    area_id            { 2 }
    lunch_title        { '大名のカレー' }
    lunch_description  { '美味しいカレー' }
    lunch_type_id      { 5 }
    lunch_price_id     { 3 }
    afternoon_title         { '市役所裏の公園' }
    afternoon_description   { '広い広場があります' }
    afternoon_type_id       { 2 }
    afternoon_price_id      { 6 }
    afternoon_period_id     { 3 }

    association :user
    after(:build) do |plan|
      plan.image.attach(io: File.open('public/images/test_image.png'), filename: 'test_image.png')
    end
  end
end
