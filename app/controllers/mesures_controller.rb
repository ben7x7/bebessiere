class MesuresController < ApplicationController

  def new
    @dessert = Dessert.find(params[:dessert_id])
    @mesure = Mesure.new
  end

  def create
    @dessert = Dessert.find(params[:dessert_id])
    @mesure = Mesure.new(mesure_params)
    @mesure.dessert = @dessert

    if @mesure.save
      redirect_to dessert_path(@dessert)
    else
      render "desserts/show"
    end
  end

  def destroy
    @mesure = Mesure.find(params[:id])
    @mesure.destroy
    redirect_to dessert_path(@mesure.dessert)
  end

  private

  def mesure_params
    params.require(:mesure).permit(:quantity, :ingredient_id)
  end

end
