class PostsController < ApplicationController
  def index
  end

  def create
		UserMailer.message(params[:email]).deliver_later
     	redirect_to posts_path
 	end

  def show
  end

  def update
  end

end
