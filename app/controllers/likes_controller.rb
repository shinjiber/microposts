class LikesController < ApplicationController
  before_action :require_user_logged_in
  
  
  def create
    current_user = User.find(params[:user.id])
    current_user.iine(micropost)
    flash[:notice] = 'Like it!'
    redirect_to root_url
  end
  
  
  def destroy
    current_user = User.find(params[:user.id])
    current_user.iine_off(micropost)
    flash[:success] = "Remove like!"
    redirect_to root_url
  end
  
  
  private
  

  
end
