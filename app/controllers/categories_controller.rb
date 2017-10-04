class CategoriesController < OpenReadController
  before_action :set_category, only: [:show, :update, :destroy]
  before_action :set_categorizable, only: [:create]
  # GET /categories
  def index
    @categories = Category.all

    render json: @categories.includes([:products, :dishes]), include: ['products', 'dishes']
  end

  # GET /categories/1
  def show
    render json: @category
  end

  # POST /categories
  def create
    @category = @categorizable.categories.build(category_params)

    if @category.save
      render json: @category, status: :created, location: @category
    else
      render json: @category.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /categories/1
  def update
    if @category.update(category_params)
      render json: @category
    else
      render json: @category.errors, status: :unprocessable_entity
    end
  end

  # DELETE /categories/1
  def destroy
    @category.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_category
      @category = Category.find(params[:id])
    end

    def set_categorizable
      if params[:product_section_id]
        @categorizable = ProductSection.find(params[:product_section_id])
      elsif params[:chef_section_id]
        @categorizable = ChefSection.find(params[:chef_section_id])
      end
    end

    # Only allow a trusted parameter "white list" through.
    def category_params
      params.require(:category).permit(:cat_type, :cat_type_vn, :description, :description_vn)
    end
end
