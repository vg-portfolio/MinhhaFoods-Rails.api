class ChefSectionsController < OpenReadController
  before_action :set_chef_section, only: [:show, :update, :destroy]

  # GET /chef_sections
  def index
    @chef_sections = ChefSection.first
    render json: @chef_sections
  end

  # GET /chef_sections/1
  def show
    render json: @chef_section
  end

  # POST /chef_sections
  def create
    @chef_section = current_user.build_chef_section(chef_section_params)

    if @chef_section.save
      render json: @chef_section, status: :created, location: @chef_section
    else
      render json: @chef_section.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /chef_sections/1
  def update
    if @chef_section.update(chef_section_params)
      render json: @chef_section
    else
      render json: @chef_section.errors, status: :unprocessable_entity
    end
  end

  # DELETE /chef_sections/1
  def destroy
    @chef_section.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_chef_section
      @chef_section = ChefSection.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def chef_section_params
      params.require(:chef_section).permit(:title, :titleVn, :description, :descriptionVn)
    end
end
