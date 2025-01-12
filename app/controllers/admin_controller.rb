class AdminController < ApplicationController
  before_action :require_admin

  def dashboard
    @total_users = User.count
    @total_stores = Store.count
    @total_ratings = Rating.count
    @users = User.all
    @stores = Store.all
  end
end
