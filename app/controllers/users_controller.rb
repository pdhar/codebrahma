class UsersController < ApplicationController
  before_filter :signed_in_user, only: [:index]
  respond_to :json
  def index
    @user = User.find(:all, :conditions => ['id not in (?)', current_user]) 
    render :json => @user.to_json
  end
    
  def show
    @user = User.find(params[:id])
    #@user.is_following(current_user)
    #@user.merge({'is_following' => current_user.following?(@user)})
    #@user["test"] = current_user.following?(@user)
    render :json => @user.to_json(:include => [:feeds])
  end
  
  def update  
    Rails.logger.debug("Hello Server #{session.inspect} asdasd #{current_user}")
    render :json => @user.to_json(:include => :feeds)
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