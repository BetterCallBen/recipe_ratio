class RecipesController < ApplicationController

  def index
    @recipes = Recipe.all.where(user: current_user)
  end

  def show
    @recipe = Recipe.find(params[:id])
  end

  def new
    @recipe = Recipe.new
  end

  def create
    @recipe = Recipe.new
  end

  def edit
    @recipe = Recipe.find(params[:id])
  end

  def update
    @recipe = Recipe.find(params[:id])
    if @recipe.update(recipe_params)
      redirect_to recipe_path(@recipe)
    end
  end

  private

  def recipe_params
    params.require(:recipe).permit(:name, :number_of_people)
  end

end
