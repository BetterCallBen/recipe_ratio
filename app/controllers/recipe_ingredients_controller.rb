class RecipeIngredientsController < ApplicationController
  def create
    @recipe = Recipe.find(params[:recipe_id])
    @recipe_ingredient = RecipeIngredient.new(params_recipe_ingredient)
    @recipe_ingredient.recipe = @recipe
    if @recipe_ingredient.save
      redirect_to recipe_path(@recipe)
    end
  end

  private

  def params_recipe_ingredient
    params.require(:recipe_ingredient).permit(:unity, :quantity, :ingredient_id)
  end
end
