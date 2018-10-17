# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :customers
  namespace :admin do
  end
  # mount Fae below your admin namespec
  mount Fae::Engine => '/admin'

  root to: 'landing#index'
end
