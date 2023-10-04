class DrugsController < ApplicationController
  skip_before_action :require_login
  before_action :set_drug,only: [:show, :edit, :update, :destroy]

  def index
    @q = Drug.ransack(params[:q])
    @drugs = @q.result(distinct: true).includes(:symptoms, :ingredients).select('drugs.*', 'count(ingredients.id) AS ingredients')
    .left_joins(:ingredients)
    .group('drugs.id')
    .order('ingredients ASC')
    .page(params[:page]).per(10)
      render :index
  end

  def show
    @drug = Drug.find(params[:id])
  end

  def likes
    @q = current_user.like_drugs.ransack(params[:q])
    @like_drugs = current_user.like_drugs.includes(:user).order(created_at: :desc)
  end


  private

  def set_drug
    @drug = Drug.find(params[:id])
  end

  def drugs_params
    params.require(:drugs).permit(:id, :drug, :name, :effect_text, :usage, :document_url, {formulation: []}, :division, :taxation,  { symptom_ids: [] },  { ingredient_ids: [] }, :drive,:tobacco, :alcohol, :maker_names)
  end

  def search_params
    params[:q]&.permit(:id, :drug, :name, :effect_text, :usage, :document_url, {formulation: []}, :division, :taxation,  { symptom_ids: [] },  { ingredient_ids: [] }, :drive,:tobacco, :alcohol, :maker_names)
  end

end