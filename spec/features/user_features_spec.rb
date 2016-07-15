require 'rails_helper'

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
      scenario 'should have a link to sign out'
    end

end
