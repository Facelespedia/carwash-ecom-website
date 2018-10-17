# frozen_string_literal: true

module DeviseCustomerDefault
    extend ActiveSupport::Concern
  
    included do
      layout 'application'
  
      helper :application
  
      skip_before_action :first_user_redirect
      skip_before_action :authenticate_user!
  
      before_action :set_default_format
  
      respond_to :html
    end
  
    def set_default_format
      request.format = :html
    end
  end
  