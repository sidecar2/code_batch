class UsersController < ApplicationController
	  layout "users_layout"
  	def show
  @user = User.find(params[:id])
  current_user = @user
  @posts = current_user.posts.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @posts }
  end
end
end
