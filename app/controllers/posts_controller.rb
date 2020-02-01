class PostsController < ApplicationController

  def show
    @post = Post.find(params[:id])
    render :show
  end

  def index
    @posts = Post.all
    render :index
  end

  def create
    @post = Post.new(post_params)
    @post.post_photo.attach(params[:post][:post_photo])

    if @post.save
      # flash[:notice] = "Post was sucessfully added!" - haven't added flash messages yet, but will comment this out eventually
      redirect_to posts_path
    else
      render :new
    end

  end

  def new
    @post = Post.new
    render :new
  end

  def update
    @post = Post.find(params[:id])
    if @post.update(post_params)
      redirect_to posts_path
    else
      render :edit
    end
  end

  def edit
    @post = Post.find(params[:id])
    render :edit
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to posts_path
  end

  private
  def post_params
    params.require(:post).permit(:title, :content_body, :date)
  end

end
