class PostsController < ApplicationController
  def index
  	@student_galleries = StudentGallery.limit(4)
  end

  def create
    ContactMessageMailer.message(params[:email]).deliver_later
      respond_to do |format|
          format.js
        end
     
  end

  def show
  end

  def update
  end

end
