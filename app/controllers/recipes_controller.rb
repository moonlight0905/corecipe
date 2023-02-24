class RecipesController < ApplicationController
  def index
    @recipes = Recipe.includes(:user).order("created_at DESC")
  end
end
