# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Welcomes', type: :request do
  describe 'GET /index' do
    let!(:questions) { create_list(:question, 5) }

    before  do
      get root_path
    end

    it 'returns http success' do
      expect(response).to have_http_status(:success)
    end

    it 'have questions assigned' do
      expect(assigns(:questions)).to eq(questions)
    end
  end
end
