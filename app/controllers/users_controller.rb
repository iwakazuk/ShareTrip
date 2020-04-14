class UsersController < ApplicationController
  before_action :serch
  USER_PER = 12

  def index
    @q = User.ransack(params[:q])
    @user = if params[:q]
               @q.result(distinct: true).order('created_at DESC').page(params[:page]).per(USER_PER)
             else
               User.order('created_at DESC').page(params[:page]).per(USER_PER)
             end
  end
  
  def show
    @user = User.find(params[:id])
    @posts = @user.posts.page(params[:page]).per(PER)
    respond_to do |format|
      format.html
      format.js { render 'posts/index' }
    end
  end

  def following
    @user  = User.find(params[:id])
    @users = @user.followings.page(params[:page]).per(USER_PER)
    render 'index'
  end

  def followers
    @user  = User.find(params[:id])
    @users = @user.followers.page(params[:page]).per(USER_PER)
    render 'index'
  end

  private

  def serch
    @q = User.ransack(params[:q])
  end

end
