class AdminController < ApplicationController

  before_action :authenticate_user!

  # GET /admin/dashboard
  def dashboard

  end
end
