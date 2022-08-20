user_main = User.create(email: 'faker@test.com', password: 'aassdd', password_confirmation: 'aassdd')
['News', 'Top 5', 'For you'].each do |category_title|
  category = Category.create(title: category_title)
  10.times.each do
    category.movies << Movie.create!(title: Faker::Movie.title, description: Faker::Lorem.paragraph)
  end
end