def sign_up(email = "test@test.com", password = "password", password_confirmation = "password")
  visit '/'
  click_link 'Sign Up'
  fill_in 'Email', with: email
  fill_in 'Password', with: password
  fill_in 'Password confirmation', with: password_confirmation
  click_button 'Sign up'
end

def sign_in

end
