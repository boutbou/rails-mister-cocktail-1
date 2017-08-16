class DosesController < ApplicationController
  before_action :set_dose, only: [:show, :destroy, ]

  def index
    @doses = Dose.all
  end

  def show
  end

  def new
    @dose = Dose.new
  end

  def create
    @dose = Dose.create(dose_params)
    @cocktail = Cocktail.find(params[:cocktail_id].to_i)
    @dose.cocktail = @cocktail
    if @dose.save
      redirect_to cocktail_path(@dose.cocktail)
    else
      render "cocktails/show"
    end
  end

  def edit
  end

  def destroy
    @dose.destroy
  end

  private

  def dose_params
    params.require(:dose).permit(:quantity, :description, :ingredient_id)
  end

  def set_dose
    @dose = Dose.find(params[:id])
  end
end
