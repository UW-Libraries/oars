# frozen_string_literal: true

require 'rails_helper'
include Warden::Test::Helpers

RSpec.describe 'Dashboard', type: :system do
  context 'as a regular user' do
    let(:user) { FactoryBot.create(:user) }

    before do
      login_as user
      visit '/dashboard'
    end

    it 'has the footer version' do
      expect(page).to have_content ENV['DEPLOYED_VERSION']
    end

    it 'does not have a link to the user roles page' do
      expect(page).not_to have_link 'Manage User Roles'
    end
  end

  context 'as an admin user' do
    let(:admin) { FactoryBot.create(:admin) }
    before do
      login_as admin
      visit '/dashboard'
    end

    it 'has a link to the user roles page' do
      expect(page).to have_link 'Manage User Roles'
    end
  end
end
