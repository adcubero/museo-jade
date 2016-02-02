class ExhibitionInformationsController < ApplicationController
  before_action :set_exhibition_information, only: [:show, :edit, :update, :destroy]

  # GET /exhibition_informations
  # GET /exhibition_informations.json
  def index
    @exhibition = Exhibition.find(params[:exhibition_id])
    @exhibition_informations = @exhibition.exhibition_informations
  end

  # GET /exhibition_informations/1
  # GET /exhibition_informations/1.json
  def show
  end

  # GET /exhibition_informations/new
  def new
    @exhibition_information = ExhibitionInformation.new

    @exhibition_information.exhibition_id = Exhibition.find(params[:exhibition_id]).id
    @path = { url: exhibition_exhibition_informations_path(@exhibition_information.exhibition_id), html: { method: :post } }
  end

  # GET /exhibition_informations/1/edit
  def edit
    @exhibition_information = ExhibitionInformation.find(params[:id])
    @path = { url: "#{exhibition_exhibition_informations_path(@exhibition_information.exhibition)}/#{@exhibition_information.id}", html: { method: :put } }
  end

  # POST /exhibition_informations
  # POST /exhibition_informations.json
  def create
    @exhibition_information = ExhibitionInformation.new(exhibition_information_params)
    @exhibition_information.exhibition_id = Exhibition.find(params[:exhibition_id]).id

    respond_to do |format|
      if @exhibition_information.save
        format.html { redirect_to exhibition_exhibition_informations_path(@exhibition_information.exhibition_id), notice: 'Exhibition information was successfully created.' }
        format.json { render :show, status: :created, location: @exhibition_information }
      else
        format.html { render :new }
        format.json { render json: @exhibition_information.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /exhibition_informations/1
  # PATCH/PUT /exhibition_informations/1.json
  def update
    respond_to do |format|
      if @exhibition_information.update(exhibition_information_params)
        format.html { redirect_to exhibition_exhibition_informations_path(@exhibition_information.exhibition), notice: 'Exhibition information was successfully updated.' }
        format.json { render :show, status: :ok, location: @exhibition_information }
      else
        format.html { render :edit }
        format.json { render json: @exhibition_information.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /exhibition_informations/1
  # DELETE /exhibition_informations/1.json
  def destroy
    @exhibition_information.destroy
    respond_to do |format|
      format.html { redirect_to exhibition_exhibition_informations_url, notice: 'Exhibition information was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_exhibition_information
      @exhibition_information = ExhibitionInformation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def exhibition_information_params
      params.require(:exhibition_information).permit(:name, :description, :miniDescription, :language, :exhibition_id)
    end
end
