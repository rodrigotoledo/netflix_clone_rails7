class Category < ApplicationRecord
  validates :title, presence: true, uniqueness: true
  has_many :movie_categories, dependent: :destroy
  has_many :movies, through: :movie_categories
end
