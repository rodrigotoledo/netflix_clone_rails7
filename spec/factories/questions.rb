FactoryBot.define do
  factory :question do
    title {Faker::Lorem.question(word_count: 4, supplemental: false) }
    content {Faker::Lorem.paragraph }
  end
end
