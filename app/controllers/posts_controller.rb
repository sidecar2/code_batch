class PostsController < ApplicationController

  layout "posts_layout"

def index

      @tags = ActsAsTaggableOn::Tag.all(:order=>'name')
  @tag_count = ActsAsTaggableOn::Tag.count(:id)
 
   if params[:tag] 

    @posts = Post.tagged_with(params[:tag])
  else
     @posts = Post.last(20)
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


   def tag_cloud
    @tags = Post.tag_counts_on
  end


  #def search
    #@search = Post.search do
      #fulltext (params[:search])
    #end
    #@posts = @search.results
  #end

  def self.tag_counts
  Tag.select("tags.*, count(taggings.tag_id) as count").
    joins(:taggings).group("taggings.tag_id")
end

def cast_vote
  @post = Post.find params[:id]
  if @post.call("#{params[:updown]}_vote_from", current_user)
    respond_to do |format|
      format.js
    end
  else
    head :not_found
  end
end

#def vote_up
#@post = Post.all
#current_user.vote_for(post)
#end

end


