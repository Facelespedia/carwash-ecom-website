# frozen_string_literal: true

Rails.application.routes.draw do
  namespace :admin do
  end
  # mount Fae below your admin namespec
  mount Fae::Engine => '/admin'

  devise_for :customers,
             only: %i[registrations sessions passwords],
             controllers: {
               registrations: 'customers/registrations',
               sessions: 'customers/sessions'
             },
             path: 'customers'

  root to: 'landing#index'
end
