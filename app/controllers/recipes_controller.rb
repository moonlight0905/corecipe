class RecipesController < ApplicationController
  before_action :set_recipe, only:[:show, :edit, :update, :correct_recipe]
  before_action :correct_recipe, only:[:edit, :destroy]

  def index
    @recipes = Recipe.includes(:user).order("created_at DESC")
  end

  def search
    @recipes = Recipe.search(params[:keyword])
  end

  def new
    @recipe = Recipe.new
  end

  def create
    @recipe = Recipe.new(recipe_params)
    if @recipe.save
      redirect_to root_path
    else
      render 'new'
    end
  end

  def show
    set_recipe
  end

  def edit
    set_recipe
  end

  def update
    set_recipe
    @recipe.update(recipe_params)
    if @recipe.save
      redirect_to recipe_path(@recipe.id)
    else
      render "edit"
    end 
  end

  private
  def recipe_params
    params.require(:recipe).permit(:recipe_name,:image,:category_id,:servings_id,:ingredients1,:ingredients2,:ingredients3,:ingredients4,:ingredients5,:ingredients6,:cooking_instructions1,:cooking_instructions2,:cooking_instructions3,:cooking_instructions4,:cooking_instructions5,:cooking_instructions6,:remarks).merge(user_id: current_user.id)
  end

  def set_recipe
    @recipe = Recipe.find(params[:id])
  end

  def correct_recipe
    unless user_signed_in? && @recipe.user == current_user
      redirect_to root_path
    end
  end
end
