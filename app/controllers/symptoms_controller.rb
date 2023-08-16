class SymptomsController < ApplicationController
  def index
    @symptoms = ActsAsTaggableOn::Symptom.all
  end

  def show
    @symptom =  ActsAsTaggableOn::Symptom.find(params[:id])
    @drugs = Hashmodel.tagged_with(@symptom.name)
  end
end
