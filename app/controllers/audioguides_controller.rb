class AudioguidesController < ApplicationController
  before_action :set_audioguide, only: [:show, :edit, :update, :destroy]

  # GET /audioguides
  # GET /audioguides.json
  def index
    @audioguides = Audioguide.all
  end

  # GET /audioguides/1
  # GET /audioguides/1.json
  def show
  end

  # GET /audioguides/new
  def new
    @audioguide = Audioguide.new
  end

  # GET /audioguides/1/edit
  def edit
  end

  # POST /audioguides
  # POST /audioguides.json
  def create
    @audioguide = Audioguide.new(audioguide_params)

    respond_to do |format|
      if @audioguide.save
        format.html { redirect_to @audioguide, notice: 'Audioguide was successfully created.' }
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
        format.html { redirect_to @audioguide, notice: 'Audioguide was successfully updated.' }
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
      format.html { redirect_to audioguides_url, notice: 'Audioguide was successfully destroyed.' }
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
      params.require(:audioguide).permit(:description, :file, :audio, :piece_id)
    end
end
