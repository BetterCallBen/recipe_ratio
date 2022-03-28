class RatiosController < ApplicationController

  def new
    @recipe = Recipe.find(params[:recipe_id])
    @ratio = Ratio.new
  end

  def create
    @recipe = Recipe.find(params[:recipe_id])
    @ratio = Ratio.new(params_ratio)
    @ratio.recipe = @recipe
    if @ratio.save
      redirect_to recipe_ratio_path(@recipe, @ratio)
    end
  end

  def show
    @recipe = Recipe.find(params[:recipe_id])
    @ratio = Ratio.find(params[:id])
  end

  private

  def params_ratio
    params.require(:ratio).permit(:number_of_people)
  end
end
