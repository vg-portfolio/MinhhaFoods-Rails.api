class ChefCategoriesController < OpenReadController
  before_action :set_chef_category, only: [:show, :update, :destroy]

  # GET /chef_categories
  def index
    @chef_categories = ChefCategory.all

    render json: @chef_categories, include: ['dishes']
  end

  # GET /chef_categories/1
  def show
    render json: @chef_category
  end

  # POST /chef_categories
  def create
    @chefSection = ChefSection.first
    @chef_category = @chefSection.chef_categories.create(chef_category_params)

    if @chef_category.save
      render json: @chef_category, status: :created, location: @chef_category
    else
      render json: @chef_category.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /chef_categories/1
  def update
    if @chef_category.update(chef_category_params)
      render json: @chef_category
    else
      render json: @chef_category.errors, status: :unprocessable_entity
    end
  end

  # DELETE /chef_categories/1
  def destroy
    @chef_category.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_chef_category
      @chef_category = ChefCategory.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def chef_category_params
      params.require(:chef_category).permit(:cat_type, :cat_type_vn, :description, :description_vn, :image_url)
    end
end
