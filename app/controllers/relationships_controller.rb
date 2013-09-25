class RelationshipsController < ApplicationController
  
  respond_to :json
  def show
    @is_followed = current_user.following?(@user = User.find(params[:id]))
    Rails.logger.debug("current user #{@is_followed}")
    render :json => { :is_followed => @is_followed.to_s}
    
  end
  
  def create
    #Rails.logger.debug("Hello Server #{session.inspect} current user #{params[:followed_id]}")
    @user = User.find(params[:followed_id])
    current_user.follow!(@user)
    render :json => @user.to_json
  end

  def destroy
    #@user = Relationship.find(params[:followed_id]).followed
    @user = User.find(params[:id])
    current_user.unfollow!(@user)
    render :json => @user.to_json
  end
end