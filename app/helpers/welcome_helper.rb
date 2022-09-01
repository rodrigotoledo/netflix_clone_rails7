# frozen_string_literal: true

module WelcomeHelper
  def question_id(question)
    "question_#{question.id}"
  end
end
