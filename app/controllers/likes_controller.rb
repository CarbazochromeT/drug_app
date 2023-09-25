class LikesController < ApplicationController

  def create
    @drug = Drug.find(params[:drug_id])
    current_user.like(@drug)
  end

  def destroy
    @drug = current_user.likes.find(params[:id]).drug
    current_user.unlike(@drug)
  end
end