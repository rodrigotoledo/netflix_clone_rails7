# frozen_string_literal: true

class WelcomeController < ApplicationController
  def index
    @questions = Question.all
  end
end
