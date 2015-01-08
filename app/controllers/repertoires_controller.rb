class RepertoiresController < ApplicationController
  before_action :set_repertoire, only: [:show, :edit, :update, :destroy]

  # GET /repertoires
  # GET /repertoires.json
  def index
    
  end

  # GET /repertoires/1
  # GET /repertoires/1.json
  def show
  end

  # GET /repertoires/new
  def new
    @repertoire = Repertoire.new
  end

  # GET /repertoires/1/edit
  def edit
  end

  # POST /repertoires
  # POST /repertoires.json
  def create
    @repertoire = Repertoire.new(repertoire_params)

    respond_to do |format|
      if @repertoire.save
        format.html { redirect_to @repertoire, notice: 'Repertoire was successfully created.' }
        format.json { render :show, status: :created, location: @repertoire }
      else
        format.html { render :new }
        format.json { render json: @repertoire.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /repertoires/1
  # PATCH/PUT /repertoires/1.json
  def update
    respond_to do |format|
      if @repertoire.update(repertoire_params)
        format.html { redirect_to repertoires_path, notice: 'Repertoire was successfully updated.' }
        format.json { render :show, status: :ok, location: @repertoire }
      else
        format.html { render :edit }
        format.json { render json: @repertoire.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /repertoires/1
  # DELETE /repertoires/1.json
  def destroy
    @repertoire.destroy
    respond_to do |format|
      format.html { redirect_to repertoires_url, notice: 'Repertoire was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_repertoire
      @repertoire = Repertoire.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def repertoire_params
      params.require(:repertoire).permit(:order, :music_id)
    end
end
