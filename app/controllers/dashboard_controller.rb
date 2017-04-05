
module Secured
  extend ActiveSupport::Concern

  included do
    before_action :logged_in_using_omniauth?
  end

  def logged_in_using_omniauth?
    redirect_to '/dashboard/show' unless session[:userinfo].present?
  end
end

class DashboardController < ApplicationController
  
  include Secured

  def show
  end

end
