class DashboardController < ApplicationController
  def index
    if current_user #&& current_user.customer?
    else
      flash[:error] = "You must be logged in to view your dashboard!"
      redirect_to root_url
    end
  end
end
