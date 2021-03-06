class DosesController < ApplicationController
  def new
    @dose = Dose.new
    cocktail_id = params[:cocktail_id]
    @cocktail = Cocktail.find(cocktail_id)
  end

  def create
    cocktail_id = params[:cocktail_id]
    @cocktail = Cocktail.find(cocktail_id)

    # ingredient_id = params[:dose][:ingredient_id]
    # ingredient = Ingredient.find(ingredient_id)

    # description = params[:dose][:description]
    @dose = Dose.new(strong_params)

    @dose.cocktail = @cocktail
    # @dose.ingredient = ingredient

    if @dose.save
      redirect_to cocktail_path(@cocktail)
    else
      render :new
    end
  end

  def destroy
    dose_id = params[:id]
    dose = Dose.find(dose_id)
    dose.destroy
    redirect_to cocktail_path(dose.cocktail)
  end

  private

  def strong_params
  	params.require(:dose).permit(:description, :ingredient_id)
  end
end
