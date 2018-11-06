class DosesController < ApplicationController
  def new
    @dose = Dose.new
    cocktail_id = params[:cocktail_id]
    @cocktail = Cocktail.find(cocktail_id)
  end

  def create
    cocktail_id = params[:cocktail_id]
    @cocktail = Cocktail.find(cocktail_id)

    ingredient_id = params[:dose][:ingredient_id]
    ingredient = Ingredient.find(ingredient_id)

    description = params[:dose][:description]
    dose = Dose.new(description: description)

    dose.cocktail = @cocktail
    dose.ingredient = ingredient

    if dose.save
      redirect_to cocktail_path(@cocktail)
    else
      :new
    end
  end
end
