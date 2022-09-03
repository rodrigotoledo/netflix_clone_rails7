# frozen_string_literal: true

require 'rails_helper'

# Specs in this file have access to a helper object that includes
# the WelcomeHelper. For example:
#
# describe WelcomeHelper do
#   describe "string concat" do
#     it "concats two strings with spaces" do
#       expect(helper.concat_strings("this","that")).to eq("this that")
#     end
#   end
# end
RSpec.describe WelcomeHelper, type: :helper do
  describe 'question uniq id' do
    let(:question) { create(:question) }
    let(:question_id) { "question_#{question.id}" }

    it 'generate uniq id for question' do
      expect(helper.question_id(question)).to eq(question_id)
    end
  end
end
