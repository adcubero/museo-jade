class PieceInformsController < ApplicationController
  before_action :set_piece_inform, only: [:show, :edit, :update, :destroy]

  # GET /piece_informs
  # GET /piece_informs.json
  def index
    @piece = Piece.find(params[:piece_id])
    @piece_informs = @piece.piece_informs

    if params[:search]
      @piece_informs = PieceInform.search(params[:search]).order("created_at DESC")
    else
      @piece_informs = PieceInform.all.order('created_at DESC')
    end
  end

  # GET /piece_informs/1
  # GET /piece_informs/1.json
  def show
  end

  # GET /piece_informs/new
  def new
    @piece_inform = PieceInform.new

    @piece_inform.piece_id = Piece.find(params[:piece_id]).id
    @path = { url: exhibition_piece_piece_informs_path(Piece.find(params[:piece_id]).exhibition,@piece_inform.piece_id), html: { method: :post } }
  end

  # GET /piece_informs/1/edit
  def edit
    @piece_inform = PieceInform.find(params[:id])
    @path = { url: "#{exhibition_piece_piece_informs_path(Piece.find(params[:piece_id]).exhibition,@piece_inform.piece)}/#{@piece_inform.id}", html: { method: :put } }
  end

  # POST /piece_informs
  # POST /piece_informs.json
  def create
    @piece_inform = PieceInform.new(piece_inform_params)
    @piece_inform.piece_id = Piece.find(params[:piece_id]).id


    respond_to do |format|
      if @piece_inform.save
        format.html { redirect_to exhibition_piece_piece_informs_path(Piece.find(params[:piece_id]).exhibition,@piece_inform.piece_id), notice: 'Piece inform was successfully created.' }
        format.json { render :show, status: :created, location: @piece_inform }
      else
        format.html { render :new }
        format.json { render json: @piece_inform.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /piece_informs/1
  # PATCH/PUT /piece_informs/1.json
  def update
    respond_to do |format|
      if @piece_inform.update(piece_inform_params)
        format.html { redirect_to exhibition_piece_piece_informs_path(Piece.find(params[:piece_id]).exhibition,@piece_inform.piece), notice: 'Piece inform was successfully updated.' }
        format.json { render :show, status: :ok, location: @piece_inform }
      else
        format.html { render :edit }
        format.json { render json: @piece_inform.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /piece_informs/1
  # DELETE /piece_informs/1.json
  def destroy
    @piece_inform.destroy
    respond_to do |format|
      format.html { redirect_to exhibition_piece_piece_informs_url, notice: 'Piece inform was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_piece_inform
      @piece_inform = PieceInform.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def piece_inform_params
      params.require(:piece_inform).permit(:name, :description, :language, :piece_id)
    end
end
