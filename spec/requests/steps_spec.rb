# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Steps', type: :request do
  describe 'GET /create' do
    before do
      post steps_path, params: { email_registration: email }
    end

    let(:email) { 'some-email@test.com' }

    it 'redirects to steps after registration' do
      expect(response).to redirect_to(steps_path)
    end

    xit 'save in session the email' do
      # TODO: expect to have the email in the session
    end
  end
end
