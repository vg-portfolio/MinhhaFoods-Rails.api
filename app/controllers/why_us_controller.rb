class WhyUsController < OpenReadController
  before_action :set_why_u, only: [:show, :update, :destroy]

  # GET /why_us
  def index
    @why_us = WhyU.all

    render json: @why_us
  end

  # GET /why_us/1
  def show
    render json: @why_u
  end

  # POST /why_us
  def create
    @aboutSection = AboutSection.first
    @why_u = @aboutSection.create_why_us(why_u_params)

    if @why_u.save
      render json: @why_u, status: :created, location: @why_u
    else
      render json: @why_u.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /why_us/1
  def update
    if @why_u.update(why_u_params)
      render json: @why_u
    else
      render json: @why_u.errors, status: :unprocessable_entity
    end
  end

  # DELETE /why_us/1
  def destroy
    @why_u.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_why_u
      @why_u = WhyU.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def why_u_params
      params.require(:why_u).permit(:title, :titleVn, :description, :descriptionVn)
    end
end
