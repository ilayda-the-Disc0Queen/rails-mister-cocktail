class DosesController < ApplicationController
  def new
    @cocktail = Cocktail.find(params[:cocktail_id])
    @dose = Dose.new
  end

  def create
    @cocktail = Cocktail.find(params[:cocktail_id]) # find cocktail
    @dose = Dose.new(dose_params) # make a new dose
    @dose.cocktail = @cocktail # assign cocktail to newly made dose
    if @dose.save
      redirect_to dose_path(@cocktail)
    else
      render "cocktails/show"
    end
  end

  private

  def dose
    params.require(:dose).permit(:description)
  end
end
