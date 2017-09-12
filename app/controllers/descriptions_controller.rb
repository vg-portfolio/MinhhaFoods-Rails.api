class DescriptionsController < OpenReadController
  before_action :set_describable, only: [:create]

  # GET /descriptions
  def index
    @descriptions = Description.all

    render json: @descriptions
  end

  # GET /descriptions/1
  def show
    render json: @description
  end

  # POST /descriptions
  def create
    @description = @describable.descriptions.create(description_params)

    if @description.save
      render json: @description, status: :created, location: @description
    else
      render json: @description.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /descriptions/1
  def update
    if @description.update(description_params)
      render json: @description
    else
      render json: @description.errors, status: :unprocessable_entity
    end
  end

  # DELETE /descriptions/1
  def destroy
    @description.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_description
      @description = Description.find(params[:id])
    end

    def set_describable
      if params[:product_id]
        @describable = Product.find(params[:product_id])
      end
    end

    # Only allow a trusted parameter "white list" through.
    def description_params
      params.require(:description).permit(:body, :describable)
    end
end
