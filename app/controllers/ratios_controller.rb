class RatiosController < ApplicationController
  def create
    @recipe = Recipe.find(params[:recipe_id])
    @ratio = Ratio.new(params_ratio)
    @ratio.recipe = @recipe
    if @ratio.save
      redirect_to recipe_path(@recipe)
    end
  end

  private

  def params_ratio
    params.require(:ratio).permit(:number_of_people)
  end
end
