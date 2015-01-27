class PatrimonyItemCategoriesController < ApplicationController
  before_action :set_patrimony_item_category, only: [:show, :edit, :update, :destroy]

  # GET /patrimony_item_categories
  # GET /patrimony_item_categories.json
  def index
    @patrimony_item_categories = PatrimonyItemCategory.all
  end

  # GET /patrimony_item_categories/1
  # GET /patrimony_item_categories/1.json
  def show
  end

  # GET /patrimony_item_categories/new
  def new
    @patrimony_item_category = PatrimonyItemCategory.new
  end

  # GET /patrimony_item_categories/1/edit
  def edit
  end

  # POST /patrimony_item_categories
  # POST /patrimony_item_categories.json
  def create
    @patrimony_item_category = PatrimonyItemCategory.new(patrimony_item_category_params)

    respond_to do |format|
      if @patrimony_item_category.save
        format.html { redirect_to @patrimony_item_category, notice: 'Patrimony item category was successfully created.' }
        format.json { render :show, status: :created, location: @patrimony_item_category }
      else
        format.html { render :new }
        format.json { render json: @patrimony_item_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /patrimony_item_categories/1
  # PATCH/PUT /patrimony_item_categories/1.json
  def update
    respond_to do |format|
      if @patrimony_item_category.update(patrimony_item_category_params)
        format.html { redirect_to @patrimony_item_category, notice: 'Patrimony item category was successfully updated.' }
        format.json { render :show, status: :ok, location: @patrimony_item_category }
      else
        format.html { render :edit }
        format.json { render json: @patrimony_item_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /patrimony_item_categories/1
  # DELETE /patrimony_item_categories/1.json
  def destroy
    @patrimony_item_category.destroy
    respond_to do |format|
      format.html { redirect_to patrimony_item_categories_url, notice: 'Patrimony item category was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_patrimony_item_category
      @patrimony_item_category = PatrimonyItemCategory.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def patrimony_item_category_params
      params.require(:patrimony_item_category).permit(:category)
    end
end
