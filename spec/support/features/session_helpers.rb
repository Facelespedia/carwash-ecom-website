# frozen_string_literal: true

module Features
  module SessionHelpers
    def admin_sign_up_with(first_name, last_name, email, password)
      system 'rails fae:seed_db'
      visit '/admin/first_user'
      fill_in '* First Name', with: first_name
      fill_in 'Last Name', with: last_name
      fill_in '* Email', with: email
      fill_in '* Password', with: password
      fill_in 'Password Confirmation', with: password
      click_button 'Submit'
    end

    def create_customer
      Customer.create(email: 'valid@example.com', password: 'password')
    end

    def sign_up_with(email, password, confirm)
      visit new_customer_registration_path
      fill_in '* Email', with: email
      fill_in '* Password', with: password
      fill_in '* Password confirmation', with: confirm
      click_button 'Sign up'
    end

    def sign_in_with(email, password)
      visit new_customer_session_path
      fill_in 'Email', with: email
      fill_in 'Password', with: password
      click_button 'Log in'
    end
  end
end
