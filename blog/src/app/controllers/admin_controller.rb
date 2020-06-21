class AdminController < ApplicationController

  before_action :authenticate_user!, only: [:dashboard]

  # GET /admin/dashboard
  def dashboard

  end
end
