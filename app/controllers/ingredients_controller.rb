class IngredientsController < ApplicationController

  def liquors
    @ingredients = Ingredient.all
    render :liquors
  end

  def mixers
    @ingredients = Ingredient.all
    render :mixers
  end

  def show #dont think i need this
    @recipes = Ingredient.find(params[:id]).recipes
    render :show
  end
end
