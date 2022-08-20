class Movie < ApplicationRecord
  validates :title, :description, presence: true
  has_many :movie_user, dependent: :destroy
  has_many :users, through: :movie_user
end
