class PostsController < ApplicationController

  layout "posts_layout"

def index
    @posts = current_user.posts.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @posts }
    end
  end

  def new
    @post = Post.new
  end

 def create
    @post = current_user.posts.build(params[:post])
    respond_to do |format|
      if @post.save
        format.html { redirect_to @post, notice: 'Post was successfully created.' }
        format.json { render json: @post, status: :created, location: @post }
      else
        format.html { render action: "new" }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end


  def edit
    @post = Post.find(params[:id])
  end

  def show
    @post = Post.find(params[:id])
  end

  def update
  @post = Post.new(params[:post])
    if @post.save
      flash[:notice] = "Post Has Been Updated."
      redirect_to @post
    else
      render :action => 'edit'
    end
  end

  def destroy
  end

end
