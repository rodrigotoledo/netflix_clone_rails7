class Question < ApplicationRecord
  validates :title, :content, presence: true
  validates :title, uniqueness: true
end
