# frozen_string_literal: true

require 'rails_helper'

feature 'Super Admin sign up' do
  before :each do
    system 'rails fae:seed_db'
  end

  scenario 'with valid email and password' do
    visit '/admin/first_user'
    fill_in '* First Name', with: 'Admin'
    fill_in 'Last Name', with: 'Nimda'
    fill_in '* Email', with: 'admin@admin.com'
    fill_in '* Password', with: 'password'
    fill_in 'Password Confirmation', with: 'password'
    click_button 'Submit'
    expect(page).to have_content('My FINE Admin')
  end
end
