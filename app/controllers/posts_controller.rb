class PostsController < ApplicationController
    before_action :authenticate_user!
    #before_action :correct_user, only: [:destroy]

    def index
      @posts = Post.all.order(created_at: :desc)
    end
    
    def show
      @post = Post.find(params[:id])
      @user = @post.user
      @likes_count = Like.where(post_id: @post.id).count
    end
    
    def new
      @post = current_user.posts.build(post_params)
    end
    
    def create
      @post = current_user.posts.build(posts_params)
      if @post.save
        flash[:notice] = "投稿を作成しました"
        redirect_to current_user
      else
        render :new
      end
    end
    
    def edit
      @post = Post.find(params[:id])
    end
    
    def update
      @post = Post.find(params[:id])
      @post.content = params[:content]
      @post.user_id = current_user.id
      if @post.save
        flash[:notice] = "投稿を編集しました"
        redirect_to :index
      else
        render :edit
      end
    end
    
    def destroy
      @post = Post.find(params[:id])
      @post.destroy
      flash[:notice] = "投稿を削除しました"
      redirect_to current_user
    end
    
    private

    def posts_params
      params.require(:post).permit(
      :content,
      :image
      )
    end
    
    def correct_user
      @post = Post.find(params[:id])
      redirect_to(root_url) unless @post.user == current_user
    end

  end
  