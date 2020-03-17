class UsersController < ApplicationController
  before_action :authenticate_user!
  def index
    @users = User.all
  end
  
  def show
    @user = User.find(params[:id])
    @posts = @user.posts.page(params[:page]).per(24)
    @likes = @user.like_posts.page(params[:page]).per(24)
  end
  
  def likes
    @user = User.find_by(id: params[:id])
    @likes = Like.where(user_id: @user.id)
  end

  private

  def serch
    @q = User.ransack(params[:q])
  end
  
end
