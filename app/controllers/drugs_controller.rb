class DrugsController < ApplicationController
  skip_before_action :require_login
  before_action :set_drug, only: [:show, :edit]

  def index
    @q = Drug.ransack(params[:q])
    @drugs = @q.result(distinct: true).includes(:symptoms, :ingredients, :maker_name)
    .select('drugs.*', 'count(ingredients.id) AS ingredients')
    .left_joins(:ingredients)
    .group('drugs.id')
    .order('ingredients ASC')
    .page(params[:page]).per(10)
    render :index
    if @q.result.present?
      formulation_params
    end
  end

  def search
  end

  def show
    @items = RakutenWebService::Ichiba::Item.search(keyword: @drug.name)
  end

  def likes
    @q = current_user.like_drugs.ransack(params[:q])
    @like_drugs = current_user.like_drugs.includes(:user).order(created_at: :desc)
  end

  def rakuten_search
    @items = RakutenWebService::Ichiba::Item.search(keyword: @drug.name)
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

  def formulation_params
    params[:q]&.permit({formulation: []})
    @drugs.update(params_int(formulation_params))
  end

  def params_int(formulation_params)
    formulation_params.each do |key, value|
      if integer_string?(value)
        formulation[key] = value.to_i
      end
    end
  end
end