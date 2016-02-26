class RecipesController < ApplicationController

  def index
    @recipes = Recipe.all
    render :index
  end

  def new
    @recipe = Recipe.new
    @ingredients = Ingredient.all
    render :new
  end

  def create
    @recipe = Recipe.create(recipe_params)
    redirect_to "/recipes"

    recipe_ingredients = Ingredient.all
    recipe_ingredients.each do | ingredient | 
      if params[ingredient.name]
        @recipe.ingredients.push(ingredient)
      end
    end  
  end

  def destroy
     recipe = Recipe.find(params[:id])
    if recipe.present?
      recipe.destroy 
      redirect_to "/recipes"
    else
      redirect_to "/"
      flash[:notice] = "could not find item to delte."
    end
  end

  def edit
    @recipe = Recipe.find(params[:id])
    @ingredients = Ingredient.all
    render :edit
  end

  def update
    @recipe = Recipe.find(params[:id])
    if @recipe.update_attributes(recipe_params)
      flash[:success] = "Recipe updated"
      redirect_to "/recipes/#{@recipe.id}"
    else
      render "recipes/#{@recipe.id}/edit"
    end
  end

  def show
    @recipe = Recipe.find(params[:id])
    @recipe_indredients = Ingredient.find(params[:id])
    render :show
  end

  def user
    @recipes = User.find(params[:id]).recipes
    render :user
  end
    
  private

  def recipe_params
    params.require(:recipe).permit(:name, :description, :image)
  end

end
