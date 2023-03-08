class Admin::DashboardController < ApplicationController
  def show
  end
end

class ApplicationController < ActionController::Base
  http_basic_authenticate_with :name => ENV['ADMIN_USER'], :password => ENV['ADMIN_PASSWORD'] 
end
