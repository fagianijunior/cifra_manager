class PatrimoniesController < ApplicationController
  before_action :signed_in_user
  before_action :set_patrimony, only: [:show, :edit, :update, :destroy]
  before_action :set_new_department, :set_new_patrimony_item_category, only: [:new, :edit]
  
  # GET /patrimonies
  # GET /patrimonies.json
  def index
    @patrimonies = Patrimony.all.paginate(page: params[:page])
  end

  # GET /patrimonies/1
  # GET /patrimonies/1.json
  def show
  end

  # GET /patrimonies/new
  def new
    @patrimony = Patrimony.new
  end

  # GET /patrimonies/1/edit
  def edit
  end

  # POST /patrimonies
  # POST /patrimonies.json
  def create
      @patrimony = Patrimony.new(patrimony_params)

    respond_to do |format|
      if @patrimony.save
        format.html { redirect_to patrimonies_url, notice: 'Patrimony was successfully created.' }
        format.json { render :show, status: :created, location: @patrimony }
      else
        format.html { render :new }
        format.json { render json: @patrimony.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /patrimonies/1
  # PATCH/PUT /patrimonies/1.json
  def update
    respond_to do |format|
      if @patrimony.update(patrimony_params)
        format.html { redirect_to @patrimony, notice: 'Patrimony was successfully updated.' }
        format.json { render :show, status: :ok, location: @patrimony }
      else
        format.html { render :edit }
        format.json { render json: @patrimony.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /patrimonies/1
  # DELETE /patrimonies/1.json
  def destroy
    @patrimony.destroy
    respond_to do |format|
      format.html { redirect_to patrimonies_url, notice: 'Patrimony was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_patrimony
      @patrimony = Patrimony.find(params[:id])
    end
    
    def set_new_department
      @department = Department.new
    end
    
    def set_new_patrimony_item_category
      @patrimony_item_category = PatrimonyItemCategory.new
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def patrimony_params
      params.require(:patrimony).permit(:item, :patrimony_item_category_id, :price, :date_of_entry, :date_of_exit, :department_id, :defect, :more_info)
    end
    def signed_in_user
      redirect_to(signin_path, alert: "Porfavor logue-se") unless signed_in?
    end
end
