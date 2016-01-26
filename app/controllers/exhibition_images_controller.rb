class ExhibitionImagesController < ApplicationController
  before_action :set_exhibition_image, only: [:show, :edit, :update, :destroy]

  # GET /exhibition_images
  # GET /exhibition_images.json
  def index
    @exhibition = Exhibition.find(params[:exhibition_id])
    @exhibition_images = @exhibition.exhibition_images
  end

  # GET /exhibition_images/1
  # GET /exhibition_images/1.json
  def show
  end

  # GET /exhibition_images/new
  def new
    @exhibition_image = ExhibitionImage.new
    @exhibition_image.exhibition_id = Exhibition.find(params[:exhibition_id]).id
    @path = { url: exhibition_exhibition_images_path(@exhibition_image.exhibition_id), html: { method: :post } }
  end

  # GET /exhibition_images/1/edit
  def edit
  end

  # POST /exhibition_images
  # POST /exhibition_images.json
  def create
    @exhibition_image = ExhibitionImage.new(exhibition_image_params)
     @exhibition_image.exhibition_id = Exhibition.find(params[:exhibition_id]).id

    respond_to do |format|
      if @exhibition_image.save
        format.html { redirect_to exhibition_exhibition_images_path(@exhibition_image.exhibition_id), notice: 'Exhibition image was successfully created.' }
        format.json { render :show, status: :created, location: @exhibition_image }
      else
        format.html { render :new }
        format.json { render json: @exhibition_image.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /exhibition_images/1
  # PATCH/PUT /exhibition_images/1.json
  def update
    respond_to do |format|
      if @exhibition_image.update(exhibition_image_params)
        format.html { redirect_to @exhibition_image, notice: 'Exhibition image was successfully updated.' }
        format.json { render :show, status: :ok, location: @exhibition_image }
      else
        format.html { render :edit }
        format.json { render json: @exhibition_image.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /exhibition_images/1
  # DELETE /exhibition_images/1.json
  def destroy
    @exhibition_image.destroy
    respond_to do |format|
      format.html { redirect_to exhibition_exhibition_images_url, notice: 'Exhibition image was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_exhibition_image
      @exhibition_image = ExhibitionImage.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def exhibition_image_params
      params.require(:exhibition_image).permit(:file)
    end
end
