# frozen_string_literal: true

FactoryBot.define do
  factory :user do
    email { 'faker@test.com' }
    password { 'aassdd' }
    password_confirmation { 'aassdd' }
  end
end
