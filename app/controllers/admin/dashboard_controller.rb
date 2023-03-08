class Admin::DashboardController < ApplicationController

  http_basic_authenticate_with :name => ENV['ADMIN_USER'], :password => ENV['ADMIN_PASSWORD'] 

  def show
  end

  def product_count
    @product_count = Product.all.count
  end

end

