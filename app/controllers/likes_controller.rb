class LikesController < ApplicationController
  before_action :require_user_logged_in
  
  
  def create
    like = Like.create(user_id: current_user.id, micropost_id: params[:micropost_id])
    like.save
    flash[:notice] = 'Like it'
    redirect_to micropost
  end
  
  
  def destroy
    like = Like.find_by(user_id: current_user.id, micropost_id: params[:micropost_id])
    like.destroy
  end
  
  
  private
  

  
end
