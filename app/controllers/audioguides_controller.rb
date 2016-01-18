class AudioguidesController < ApplicationController
  before_action :set_audioguide, only: [:show, :edit, :update, :destroy]

  # GET /audioguides
  # GET /audioguides.json
  def index
    @exhibition = Exhibition.find(params[:exhibition_id])
    @audioguides = @exhibition.audioguides
  end

  # GET /audioguides/1
  # GET /audioguides/1.json
  def show
    @exhibition = Exhibition.find(params[:exhibition_id])
  end

  # GET /audioguides/new
  def new
    @audioguide = Audioguide.new
    @audioguide.exhibition = Exhibition.find(params[:exhibition_id])
    @path = { url: exhibition_audioguides_path(@audioguide.exhibition), html: { method: :post } }
  end

  # GET /audioguides/1/edit
  def edit
    @audioguide = Audioguide.find(params[:id])
    @path = { url: exhibition_audioguides_path(@audioguide.exhibition, @audioguide), html: { method: :put } }
  end

  # POST /audioguides
  # POST /audioguides.json
  def create
    @audioguide = Audioguide.new(audioguide_params)
    @audioguide.exhibition_id = Exhibition.find(params[:exhibition_id]).id

    respond_to do |format|
      if @audioguide.save
        format.html { redirect_to exhibition_audioguides_path(@audioguide.exhibition_id), notice: 'Audioguide was successfully created.' }
        format.json { render :show, status: :created, location: @audioguide }
      else
        format.html { render :new }
        format.json { render json: @audioguide.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /audioguides/1
  # PATCH/PUT /audioguides/1.json
  def update
    respond_to do |format|
      if @audioguide.update(audioguide_params)
        format.html { redirect_to exhibition_audioguides_path(@audioguide.exhibition), notice: 'Audioguide was successfully updated.' }
        format.json { render :show, status: :ok, location: @audioguide }
      else
        format.html { render :edit }
        format.json { render json: @audioguide.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /audioguides/1
  # DELETE /audioguides/1.json
  def destroy
    @audioguide.destroy
    respond_to do |format|
      format.html { redirect_to exhibition_audioguides_path(@exhibition), notice: 'Audioguide was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_audioguide
      @audioguide = Audioguide.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def audioguide_params
      params.require(:audioguide).permit(:name, :description, :text, :audio, :exhibition_id, :file, :key, :id1, :id2)
    end
end
