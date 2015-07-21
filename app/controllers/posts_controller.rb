class PostsController < ApplicationController

  # before_action :is_authenticated?
  # FORGOT HOW THIS WORKS

  def index
    # @posts = Post.all
    @posts = @current_user.posts
  end


  def new
    @post = Post.new
  end

  def create
    # render json: params
    @current_user.posts.create post_params

    # # @post = Post.new(post_params)
    # if @post.save
    #   # Handle a successful save.
      redirect_to posts_path
    # else
    #   render 'new'
    # end
  end

  private

  def post_params
    params.require(:post).permit(:title,:link)
  end

end


