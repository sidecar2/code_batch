class StaticPagesController < ApplicationController

layout "static_layout"
  def index
  	@tags = ActsAsTaggableOn::Tag.all(:order=>'name')
  @tag_count = ActsAsTaggableOn::Tag.count(:id)
 
   if params[:tag] 

    @posts = Post.tagged_with(params[:tag])
	else
  	 @posts = Post.last(3)
  end
end


	def home
    	@tags = ActsAsTaggableOn::Tag.all(:order=>'name')
  @tag_count = ActsAsTaggableOn::Tag.count(:id)
 
   if params[:tag] 

    @posts = Post.tagged_with(params[:tag])
	else
  	 @posts = Post.last(3)
  end
end

	def show
    @posts = Post.all
	end




  def help
  end

  def about
  end
end


