# frozen_string_literal: true

module Customers
    class SessionsController < Devise::SessionsController
      include DeviseCustomerDefault
    end
  end
  