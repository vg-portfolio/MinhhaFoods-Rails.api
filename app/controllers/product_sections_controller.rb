class ProductSectionsController < OpenReadController
  before_action :set_product_section, only: [:show, :update, :destroy]

  # GET /product_sections
  def index
    @product_sections = ProductSection.first

    render json: @product_sections, include: ['product_categories']
  end

  # GET /product_sections/1
  # def show
  #   render json: @product_section
  # end

  # POST /product_sections
  def create
    @product_section = current_user.create_product_section(product_section_params)

    if @product_section.save
      render json: @product_section, status: :created, location: @product_section
    else
      render json: @product_section.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /product_sections/1
  def update
    if @product_section.update(product_section_params)
      render json: @product_section
    else
      render json: @product_section.errors, status: :unprocessable_entity
    end
  end

  # DELETE /product_sections/1
  def destroy
    @product_section.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product_section
      @product_section = ProductSection.first
    end

    # Only allow a trusted parameter "white list" through.
    def product_section_params
      params.require(:product_section).permit(:title, :title_vn, :description, :description_vn)
    end
end
