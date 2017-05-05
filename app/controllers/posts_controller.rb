class PostsController < ApplicationController
  def index
  	@student_galleries = StudentGallery.limit(4)
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
