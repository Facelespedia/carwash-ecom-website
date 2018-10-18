# frozen_string_literal: true

require 'rails_helper'

feature 'Customer sign in' do
  before :each do
    create_customer
  end

  scenario 'with valid email and password' do
    sign_in_with('valid@example.com', 'password')

    expect(page).to have_content('Edit Customer')
  end

  scenario 'with invalid email' do
    sign_in_with('invalid@example.com', 'password')

    expect(page).to have_content('Log in')
  end

  scenario 'with invalid password' do
    sign_in_with('valid@example.com', 'drowssap')

    expect(page).to have_content('Log in')
  end
end
