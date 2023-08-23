class IngredientsController < ApplicationController
  def index
  end

  def show
  end

  def search_params
    params.require(:drive).permit(:search,:search_radio)
  end

end
