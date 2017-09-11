class AboutSectionsController < OpenReadController
  before_action :set_about_section, only: [:show, :update, :destroy]

  # GET /about_sections
  def index
    @about_sections = AboutSection.all

    render json: @about_sections
  end

  # GET /about_sections/1
  def show
    render json: @about_section
  end

  # POST /about_sections
  def create
    @about_section = current_user.about_section.new(about_section_params)

    if @about_section.save
      render json: @about_section, status: :created, location: @about_section
    else
      render json: @about_section.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /about_sections/1
  def update
    if @about_section.update(about_section_params)
      render json: @about_section
    else
      render json: @about_section.errors, status: :unprocessable_entity
    end
  end

  # DELETE /about_sections/1
  def destroy
    @about_section.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_about_section
      @about_section = AboutSection.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def about_section_params
      params.require(:about_section).permit(:title, :titleVn, :description, :descriptionVn)
    end
end
