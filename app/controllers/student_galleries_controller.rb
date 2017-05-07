class StudentGalleriesController < ApplicationController
  before_action :set_student_gallery, only: [:show, :edit, :update, :destroy]
 before_action :authenticate_user!,  except: [:index]
  before_action :authenticate_admin!, except: [:index]
  # GET /student_galleries
  # GET /student_galleries.json
  def index
    @student_galleries = StudentGallery.all
  end

  # GET /student_galleries/1
  # GET /student_galleries/1.json
  def show
  end

  # GET /student_galleries/new
  def new
    @student_gallery = StudentGallery.new
  end

  # GET /student_galleries/1/edit
  def edit
  end

  # POST /student_galleries
  # POST /student_galleries.json
  def create
    @student_gallery = StudentGallery.new(student_gallery_params)

    respond_to do |format|
      if @student_gallery.save
        format.html { redirect_to student_galleries_path, notice: 'Student gallery was successfully created.' }
        format.json { render :show, status: :created, location: @student_gallery }
      else
        format.html { render :new }
        format.json { render json: @student_gallery.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /student_galleries/1
  # PATCH/PUT /student_galleries/1.json
  def update
    respond_to do |format|
      if @student_gallery.update(student_gallery_params)
        format.html { redirect_to @student_gallery, notice: 'Student gallery was successfully updated.' }
        format.json { render :show, status: :ok, location: @student_gallery }
      else
        format.html { render :edit }
        format.json { render json: @student_gallery.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /student_galleries/1
  # DELETE /student_galleries/1.json
  def destroy
    @student_gallery.destroy
    respond_to do |format|
      format.js #-> loads /links/destroy.js.erb
      format.html { redirect_to(posts_path) }
       
      # format.html { redirect_to student_galleries_url, notice: 'Student gallery was successfully destroyed.' }
      # format.json { head :no_content }
    end
  end

  private

   def authenticate_admin!
    if user_signed_in?
      if !current_user.admin
        redirect_to root_path
      end
    end
  end
    
    # Use callbacks to share common setup or constraints between actions.
    def set_student_gallery
      @student_gallery = StudentGallery.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def student_gallery_params
      params.require(:student_gallery).permit(:faculty, :postion, :college, :working_in, :image)
    end
end
