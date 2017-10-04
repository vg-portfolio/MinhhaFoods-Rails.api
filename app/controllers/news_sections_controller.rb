class NewsSectionsController < OpenReadController
  before_action :set_news_section, only: [:show, :update, :destroy]

  # GET /news_sections
  def index
    @news_sections = NewsSection.first

    render json: @news_sections
  end

  # GET /news_sections/1
  # def show
  #   render json: @news_section
  # end

  # POST /news_sections
  def create
    @news_section = current_user.create_news_section(news_section_params)

    if @news_section.save
      render json: @news_section, status: :created, location: @news_section
    else
      render json: @news_section.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /news_sections/1
  def update
    if @news_section.update(news_section_params)
      render json: @news_section
    else
      render json: @news_section.errors, status: :unprocessable_entity
    end
  end

  # DELETE /news_sections/1
  def destroy
    @news_section.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_news_section
      @news_section = NewsSection.first
    end

    # Only allow a trusted parameter "white list" through.
    def news_section_params
      params.require(:news_section).permit(:title, :title_vn, :description, :description_vn)
    end
end
