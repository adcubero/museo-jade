class PiecesController < ApplicationController
  before_action :authenticate_user!, except: [ :index, :show ]
  before_action :set_piece, only: [:show, :edit, :update, :destroy]

  # GET /pieces
  # GET /pieces.json
  def index
    @exhibition = Exhibition.find(params[:exhibition_id])
    @pieces = @exhibition.pieces
  end

  # GET /pieces/1
  # GET /pieces/1.json
  def show
    @exhibition = Exhibition.find(params[:exhibition_id])
  end

  # GET /pieces/new
  def new
    @piece = Piece.new
    @piece.exhibition_id = Exhibition.find(params[:exhibition_id]).id
    @path = { url: exhibition_pieces_path(@piece.exhibition_id), html: { method: :post } }
  end

  # GET /pieces/1/edit
  def edit
    @piece = Piece.find(params[:id])
    @path = { url: "#{exhibition_pieces_path(@piece.exhibition)}/#{@piece.id}", html: { method: :put } }
  end

  # POST /pieces
  # POST /pieces.json
  def create
    @piece = Piece.new(piece_params)
    @piece.exhibition_id = Exhibition.find(params[:exhibition_id]).id

    respond_to do |format|
      if @piece.save
        format.html { redirect_to exhibition_pieces_path(@piece.exhibition_id), notice: 'Piece was successfully created.' }
        format.json { render :show, status: :created, location: @piece }
      else
        format.html { render :new }
        format.json { render json: @piece.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pieces/1
  # PATCH/PUT /pieces/1.json
  def update
    respond_to do |format|
      if @piece.update(piece_params)
        format.html { redirect_to exhibition_pieces_path(@piece.exhibition), notice: 'Piece was successfully updated.' }
        format.json { render :show, status: :ok, location: @piece }
      else
        format.html { render :edit }
        format.json { render json: @piece.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pieces/1
  # DELETE /pieces/1.json
  def destroy
    @piece.destroy
    respond_to do |format|
      format.html { redirect_to exhibition_pieces_url, notice: 'Piece was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_piece
      @piece = Piece.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def piece_params
      params.require(:piece).permit(:name, :description, :room, :showcase, :item_id, :file, :audio)
    end
end
