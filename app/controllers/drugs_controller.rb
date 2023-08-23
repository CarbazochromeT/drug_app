class DrugsController < ApplicationController
  skip_before_action :require_login
  before_action :set_drug,only: [:show, :edit, :update, :destroy]

  def index
  end

  def show
  end

  def search
    @q = Drug.ransack(params[:q])
    @drugs = @q.result(distinct: true).includes(:symptoms, :ingredients, :maker_names).page(params[:page]).order("created_at desc")
    @results = @q.result
  end

  def show
    @drug = Drug.find(params[:id])
    @ingredients = @drug.ingredients.includes(:ingredient).all.order(created_at: :desc)
  end

  private

  def set_drug
    @drug = Drug.find(params[:id])
  end


  def drug_params
    params.require(:drugs).permit(:id, :drug, :name, :effect_text, :usage, :document_url, :formulation, :division, :taxation, :for_days,  { symptom_ids: [] }, :ingredients, :maker_name_id, :drive)
  end

end