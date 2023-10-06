class IngredientsController < ApplicationController
  skip_before_action :require_login
  def index
    @ingredients = Ingredient.all
  end

  def show
    @ingredient = Ingredient.find(params[:id])
  end
end
