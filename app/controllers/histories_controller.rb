class HistoriesController < OpenReadController
  before_action :set_history, only: [:show, :update, :destroy]

  # GET /histories
  def index
    @histories = History.first

    render json: @histories
  end

  # GET /histories/1
  # def show
  #   render json: @history
  # end

  # POST /histories
  def create
    # @user = current_user
    @aboutSection = AboutSection.first
    @history = @aboutSection.create_history(history_params)

    if @history.save
      render json: @history, status: :created, location: @history
    else
      render json: @history.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /histories/1
  def update
    if @history.update(history_params)
      render json: @history
    else
      render json: @history.errors, status: :unprocessable_entity
    end
  end

  # DELETE /histories/1
  def destroy
    @history.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_history
      @history = History.first
    end

    # Only allow a trusted parameter "white list" through.
    def history_params
      params.require(:history).permit(:title, :title_vn, :description, :description_vn)
    end
end
