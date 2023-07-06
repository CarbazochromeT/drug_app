class DrugsController < ApplicationController
  before_action :set_drug, only: %i[ show edit update destroy ]

  # GET /drugs
  def index
    @drugs = Drug.all
  end

  # GET /drugs/1
  def show
  end

  # GET /drugs/new
  def new
    @drug = Drug.new
  end

  # GET /drugs/1/edit
  def edit
  end

  # POST /drugs
  def create
    @drug = Drug.new(drug_params)

    if @drug.save
      redirect_to @drug, notice: "Drug was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /drugs/1
  def update
    if @drug.update(drug_params)
      redirect_to @drug, notice: "Drug was successfully updated."
    else
      render :edit, status: :unprocessable_entity
    end
  end

  # DELETE /drugs/1
  def destroy
    @drug.destroy
    redirect_to drugs_url, notice: "Drug was successfully destroyed.", status: :see_other
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_drug
      @drug = Drug.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def drug_params
      params.require(:drug).permit(:name)
    end
end
