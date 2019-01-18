class LikesController < ApplicationController
  before_action :require_user_logged_in
  
  
  def create
    micropost = Micropost.find(params[:micropost_id])
    current_user.iine(micropost)
    flash[:notice] = 'Like it!'
    redirect_to root_url
  end
  
  
  def destroy
    micropost = Micropost.find(params[:micropost_id])
    current_user.iine_off(micropost)
    flash[:success] = "Remove like!"
    redirect_to root_url
  end
  
  
  private
  

  
end
