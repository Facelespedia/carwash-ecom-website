# frozen_string_literal: true

class ApplicationDeviseController < Fae::ApplicationController
  def after_sign_in_path_for(_resource)
    custom_devise_controller?(['customers']) ? edit_customer_registration_path : super
  end

  def after_sign_out_path_for(_resource)
    custom_devise_controller?(['customers']) ? new_customer_session_path : super
  end

  private def custom_devise_controller?(values = ['customers'])
    values.include?(request.path[1..-1].split('/')[0])
  end
end
  