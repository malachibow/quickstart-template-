class PagesController < ApplicationController
  before_action :authenticate_user!, except: [:home]

  def home
  end

  def explore
  end 

  def notifications
  end

  def profile
    @user = User.find(params[:id])
  end
end
