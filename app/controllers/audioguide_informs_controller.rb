class AudioguideInformsController < ApplicationController
  before_action :set_audioguide_inform, only: [:show, :edit, :update, :destroy]

  # GET /audioguide_informs
  # GET /audioguide_informs.json
  def index
    @audioguide = Audioguide.find(params[:audioguide_id])
    @audioguide_informs = @audioguide.audioguide_informs
  end

  def search
    if params[:search]
      @audioguide_informs = AudioguideInform.joins(:audioguide).where('audioguides.exhibition_id' => params[:exhibition_id]).search(params[:search]).order("created_at DESC")
    else
      @audioguide_informs = AudioguideInform.joins(:audioguide).where('audioguides.exhibition_id' => params[:exhibition_id])
    end
  end

  # GET /audioguide_informs/1
  # GET /audioguide_informs/1.json
  def show
  end

  # GET /audioguide_informs/new
  def new
    @audioguide_inform = AudioguideInform.new

    @audioguide_inform.audioguide_id = Audioguide.find(params[:audioguide_id]).id
    @path = { url: exhibition_audioguide_audioguide_informs_path(Audioguide.find(params[:audioguide_id]).exhibition,@audioguide_inform.audioguide_id), html: { method: :post } }
  end

  # GET /audioguide_informs/1/edit
  def edit
    @audioguide_inform = AudioguideInform.find(params[:id])
    @path = { url: "#{exhibition_audioguide_audioguide_informs_path(Audioguide.find(params[:audioguide_id]).exhibition,@audioguide_inform.audioguide)}/#{@audioguide_inform.id}", html: { method: :put } }
  end

  # POST /audioguide_informs
  # POST /audioguide_informs.json
  def create
    @audioguide_inform = AudioguideInform.new(audioguide_inform_params)
    @audioguide_inform.audioguide_id = Audioguide.find(params[:audioguide_id]).id

    respond_to do |format|
      if @audioguide_inform.save
        format.html { redirect_to exhibition_audioguide_audioguide_informs_path(Audioguide.find(params[:audioguide_id]).exhibition,@audioguide_inform.audioguide_id), notice: 'Audioguide inform was successfully created.' }
        format.json { render :show, status: :created, location: @audioguide_inform }
      else
        format.html { render :new }
        format.json { render json: @audioguide_inform.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /audioguide_informs/1
  # PATCH/PUT /audioguide_informs/1.json
  def update
    respond_to do |format|
      if @audioguide_inform.update(audioguide_inform_params)
        format.html { redirect_to exhibition_audioguide_audioguide_informs_path(Audioguide.find(params[:audioguide_id]).exhibition,@audioguide_inform.audioguide), notice: 'Audioguide inform was successfully updated.' }
        format.json { render :show, status: :ok, location: @audioguide_inform }
      else
        format.html { render :edit }
        format.json { render json: @audioguide_inform.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /audioguide_informs/1
  # DELETE /audioguide_informs/1.json
  def destroy
    @audioguide_inform.destroy
    respond_to do |format|
      format.html { redirect_to exhibition_audioguide_audioguide_informs_url, notice: 'Audioguide inform was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_audioguide_inform
      @audioguide_inform = AudioguideInform.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def audioguide_inform_params
      params.require(:audioguide_inform).permit(:name, :description, :text, :audioguide_id, :language, :search)
    end
end
