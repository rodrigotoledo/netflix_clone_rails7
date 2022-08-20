FactoryBot.define do
  factory :movie_user do
    movie
    user
    rating
    status { :waiting_to_play }
    timming { 1.5 }
  end
end
