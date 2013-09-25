class HomeController < ApplicationController
  before_filter :signed_in_user, only: [:feed]
  
  def feed
  end
  
  private    
    def signed_in_user
      redirect_to root_url, notice: "Please sign in." unless signed_in?
    end

    def correct_user
      @user = User.find(params[:id])
      redirect_to(root_url) unless current_user?(@user)
    end
end