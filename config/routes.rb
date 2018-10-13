# frozen_string_literal: true

Rails.application.routes.draw do

  namespace :admin do
  end
  # mount Fae below your admin namespec
  mount Fae::Engine => '/admin'

  root to: 'landing#index'
end
