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
  end
end
