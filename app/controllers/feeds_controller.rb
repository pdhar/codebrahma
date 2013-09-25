class FeedsController < ApplicationController
  # GET /feeds
  # GET /feeds.json
  
  respond_to :json
  
  
  def index
    #@feeds = Feed.all
    @feeds = Feed.find(:all, :conditions =>{ :user_id => current_user}) 
    render :json => @feeds.to_json
    
  end

  # GET /feeds/1
  # GET /feeds/1.json
  def show
    @feed = Feed.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @feed }
    end
  end

  # GET /feeds/new
  # GET /feeds/new.json
  def new
    
  end

  # GET /feeds/1/edit
  def edit
    @feed = Feed.find(params[:id])
  end

  # POST /feeds
  # POST /feeds.json
  def create
    
    Rails.logger.debug("Hello Server #{session.inspect} current user #{current_user.id}")
    
    
    @model = Feed.create(params[:feed].merge(:user_id => current_user.id))
    if @model.save
      render :json => @model.to_json
    else
      Rails.logger.debug("Hello Server #{@model.errors.full_messages}")
      render :json => { :errors => @model.errors.full_messages }
      
      
    end
  end

  # PUT /feeds/1
  # PUT /feeds/1.json
  def update
    @feed = Feed.find(params[:id])

    respond_to do |format|
      if @feed.update_attributes(params[:feed])
        format.html { redirect_to @feed, notice: 'Feed was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @feed.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /feeds/1
  # DELETE /feeds/1.json
  def destroy
    @feed = Feed.find(params[:id])
    @feed.destroy

    respond_to do |format|
      format.html { redirect_to feeds_url }
      format.json { head :no_content }
    end
  end
end
