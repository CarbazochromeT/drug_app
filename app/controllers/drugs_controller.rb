class DrugsController < ApplicationController
  skip_before_action :require_login
  before_action :set_drug,only: [:show, :edit, :update, :destroy]
  before_action :set_q, only: [:index, :search]

  def index
    @drugs = @q.result(distinct: true).includes(:symptoms, :ingredients, :maker_names).page(params[:page]).order("created_at desc")
  end

  def show
  end

  def search
    @results = @q.result
  end

  private

  def set_drug
    @drug = Drug.find(params[:id])
  end

  def set_q
    @q = Drug.ransack(params[:q])
  end

  def drug_params
    params.require(:drugs).permit(:id, :drug, :name, :effect_text, :usage, :document_url, :formulation, :division, :taxation, :for_days,  { :symptom_ids=> [] }, :ingredients, :maker_name_id)
  end

end