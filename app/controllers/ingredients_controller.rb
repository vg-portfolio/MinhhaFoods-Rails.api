class IngredientsController < ApplicationController
  before_action :set_ingredient, only: [:show, :update, :destroy]
  before_action :set_ingredientable, only: [:create]

  # GET /ingredients
  def index
    @ingredients = Ingredient.all

    render json: @ingredients
  end

  # GET /ingredients/1
  def show
    render json: @ingredient
  end

  # POST /ingredients
  def create
    @ingredient = @ingredientable.ingredients.build(ingredient_params)

    if @ingredient.save
      render json: @ingredient, status: :created, location: @ingredient
    else
      render json: @ingredient.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /ingredients/1
  def update
    if @ingredient.update(ingredient_params)
      render json: @ingredient
    else
      render json: @ingredient.errors, status: :unprocessable_entity
    end
  end

  # DELETE /ingredients/1
  def destroy
    @ingredient.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ingredient
      @ingredient = Ingredient.find(params[:id])
    end

    def set_ingredientable
      if params[:product_id]
        @ingredientable = Product.find(params[:product_id])
      elsif params[:dish_id]
        @ingredientable = Dish.find(params[:dish_id])
      end
    end

    # Only allow a trusted parameter "white list" through.
    def ingredient_params
      params.require(:ingredient).permit(:body, :BodyVn, :ingredientable)
    end
end
