# frozen_string_literal: true

require 'rails_helper'

feature 'Super Admin sign in' do
  before :each do
    system 'rails fae:seed_db'
    Fae::User.create(
      email: 'admin@admin.com',
      password: 'password',
      first_name: 'Admin',
      last_name: 'Nimda',
      role_id: 1,
      active: true,
    )
  end

  scenario 'with valid email and password' do
    visit '/admin/login'
    fill_in 'user_email', with: 'admin@admin.com'
    fill_in 'user_password', with: 'password'
    click_button 'Submit'
    expect(page).to have_content('My FINE Admin')
  end
end
