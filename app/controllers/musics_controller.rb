class MusicsController < ApplicationController
  before_action :signed_in_user
  before_action :set_music, only: [ :show, :edit, :update, :destroy, :download_slide ]

  # GET /musics
  # GET /musics.json
  def index 
    @musics = @q.result.paginate(page: params[:page])
  end

  def search
    index
    render :index
  end

  # GET /musics/1
  # GET /musics/1.json
  
  def show
  end

  # GET /musics/new
  def new
    @music = Music.new
  end

  # GET /musics/1/edit
  def edit
  end

  # POST /musics
  # POST /musics.json
  def create
    @music = Music.new(music_params)

    respond_to do |format|
      if @music.save
        #Docsplit.extract_length(@music.slide)
        Docsplit.extract_pages(@music.slide, size: '1000x', pages: 1, format: [:jpg], output: store_dir)
        format.html { redirect_to @music, notice: 'Music was successfully created.' }
        format.json { render :show, status: :created, location: @music }
      else
        format.html { render :new }
        format.json { render json: @music.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /musics/1
  # PATCH/PUT /musics/1.json
  def update
    respond_to do |format|
      if @music.update(music_params)
        Docsplit.extract_images(@music.slide.path, size: '1000x', format: [:jpg], output: 'public/uploads/music/slide/'+ @music.id.to_s)
        format.html { redirect_to @music, notice: 'Music was successfully updated.' }
        format.json { render :show, status: :ok, location: @music }
      else
        format.html { render :edit }
        format.json { render json: @music.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /musics/1
  # DELETE /musics/1.json
  def destroy
    @music.destroy
    respond_to do |format|
      format.html { redirect_to musics_url, notice: 'Music was successfully destroyed.' }
      format.json { head :no_content }
    end
  end
  
  def download_slide
    send_file(
      @music.slide.path,
      filename: "#{@music.title.gsub(" ", "_")}#{File.extname(@music.slide.path)}",
      type: "application/vnd.openxmlformats-officedocument.presentationml.slideshow")
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_music
      @music = Music.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def music_params
      params.require(:music).permit(:title, :chord, :lyric, :obs, :slide)
    end
    
    def signed_in_user
      redirect_to(signin_path, alert: "Porfavor logue-se") unless signed_in?
    end
end
