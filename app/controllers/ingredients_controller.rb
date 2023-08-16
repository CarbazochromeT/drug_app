class IngredientsController < ApplicationController
  def index
    @ingredients = ActsAsTaggableOn::Ingredient.all
  end

  def show
    @ingredient =  ActsAsTaggableOn::Ingredient.find(params[:id])
    @drugs = Hashmodel.tagged_with(@ingredient.name)
  end
end
