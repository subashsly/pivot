class OfficeGalleriesController < ApplicationController


  before_action :set_office_gallery, only: [:show, :edit, :update, :destroy]
   before_action :authenticate_user!
  before_action :authenticate_admin!, except: [:index]


  # GET /office_galleries
  # GET /office_galleries.json
  def index
    @office_galleries = OfficeGallery.all
  end

  # GET /office_galleries/1
  # GET /office_galleries/1.json
  def show
  end

  # GET /office_galleries/new
  def new
    @office_gallery = OfficeGallery.new
  end

  # GET /office_galleries/1/edit
  def edit
  end

  # POST /office_galleries
  # POST /office_galleries.json
  def create
    response.headers['X-CSRF-Token'] = form_authenticity_token
    @office_gallery = OfficeGallery.new(office_gallery_params)

    respond_to do |format|
      if @office_gallery.save
        format.html { redirect_to office_galleries_path, notice: 'Office gallery was successfully created.' }
        format.json { render :show, status: :created, location: @office_gallery }
      else
        format.html { render :new }
        format.json { render json: @office_gallery.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /office_galleries/1
  # PATCH/PUT /office_galleries/1.json
  def update
    respond_to do |format|
      if @office_gallery.update(office_gallery_params)
        format.html { redirect_to @office_gallery, notice: 'Office gallery was successfully updated.' }
        format.json { render :show, status: :ok, location: @office_gallery }
      else
        format.html { render :edit }
        format.json { render json: @office_gallery.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /office_galleries/1
  # DELETE /office_galleries/1.json
  def destroy
    @office_gallery.destroy
    respond_to do |format|
      format.js
      format.html { redirect_to office_galleries_url, notice: 'Office gallery was successfully destroyed.' }
      format.json { head :no_content }
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
    def set_office_gallery
      @office_gallery = OfficeGallery.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def office_gallery_params
      params.require(:office_gallery).permit(:title, :image)
    end
end
