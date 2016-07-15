require 'rails_helper'
require_relative '../helpers/web_helpers'

feature 'User' do

    before do
      visit '/'
    end

    context 'guest user (not signed in)' do
      scenario 'should show a welcome message on the home page' do
        expect(page).to have_content 'Welcome to Instagram GT'
      end
      scenario 'should have a link to sign in' do
        expect(page).to have_link 'Sign In'
      end
      scenario 'should have a link to sign up' do
        expect(page).to have_link 'Sign Up'
      end
    end

    context 'signed in user' do

      before do
        sign_up
      end

      scenario 'should have a link to sign out' do
        expect(page).to have_link 'Sign Out'
      end
    end

end
