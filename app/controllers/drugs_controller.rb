class DrugsController < ApplicationController
  skip_before_action :require_login
  before_action :set_drug,only: [:show, :edit, :update, :destroy]

  def index
    @q = Drug.ransack(params[:q])
    @drugs = @q.result(distinct: true).includes(:symptoms, :ingredients).page(params[:page]).per(10)
    @results = @q.result
  end

  def show
  end

  def search
    @q = Drug.ransack(params[:q])
    @drugs = @q.result(distinct: true).includes(:symptoms, :ingredients).page(params[:page]).per(10)
    @results = @q.result
  end

  def show
    @drug = Drug.find(params[:id])
  end

  private

  def set_drug
    @drug = Drug.find(params[:id])
  end

  def drug_params
    params.require(:drugs).permit(:id, :drug, :name, :effect_text, :usage, :document_url, :formulation, :division, :taxation,  { symptom_ids: [] },  { ingredient_ids: [] }, :drive,:tobacco, :alcohol, :maker_names)
  end

  def search_ingredient
    #検索結果画面でもタグ一覧表示
    @tag_list = WorkoutTag.all
    　#検索されたタグを受け取る
    @tag = WorkoutTag.find(params[:workout_tag_id])
    　#検索されたタグに紐づく投稿を表示
    @post_workouts = @tag.post_workouts
  end
end