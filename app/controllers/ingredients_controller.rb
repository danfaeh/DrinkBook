class IngredientsController < ApplicationController

  def index
    @ingredients = Ingredient.all
    render :index
  end

  def mixers
    @ingredients = Ingredient.all
    render :mixers
  end

  def show #dont think i need this
    @ingredients = Ingredient.find(params[:id])
    render :show
  end
end
