# frozen_string_literal: true

module Customers
    class RegistrationsController < Devise::RegistrationsController
      include DeviseCustomerDefault
  
      def after_sign_up_path_for(_resource)
        edit_customer_registration_path
      end
  
      def after_sign_out_path_for(_resource)
        new_customer_session_path
      end
    end
  end
  