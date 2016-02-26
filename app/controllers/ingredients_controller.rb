class IngredientsController < ApplicationController

  def liquors
    @ingredients = Ingredient.all
    render :liquors
  end

  def mixers
    @ingredients = Ingredient.all
    render :mixers
  end

  def show
    @recipes = Ingredient.find(params[:id]).recipes
    @ingredient = Ingredient.find(params[:id])
    render :show
  end
end
