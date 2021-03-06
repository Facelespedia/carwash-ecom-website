# frozen_string_literal: true

require 'rails_helper'

feature 'Customer signs up' do
  scenario 'with valid email and password' do
    sign_up_with('valid@example.com', 'password', 'password')

    expect(page).to have_content('Edit Customer')
  end

  scenario 'with invalid email' do
    sign_up_with('invalid_email', 'password', 'password')

    expect(page).to have_content('Sign up')
  end

  scenario 'with blank password' do
    sign_up_with('valid@example.com', '', '')

    expect(page).to have_content('Sign up')
  end

  scenario 'with password conflict' do
    sign_up_with('valid@example.com', 'password', 'drowssap')

    expect(page).to have_content('Sign up')
  end
end
