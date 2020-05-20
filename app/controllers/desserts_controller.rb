class DessertsController < ApplicationController

  def index
    @desserts = Dessert.all
  end

  def show
    @dessert = Dessert.find(params[:id])
  end

  def new
    @dessert = Dessert.new
  end

  def edit
    @dessert = Dessert.find(params[:id])
  end

  def create
    @dessert = Dessert.new(dessert_params)
    if @dessert.save
      redirect_to dessert_path(@dessert)
    else
      render 'new'
    end
  end

  def update
    @dessert = Dessert.find(params[:id])
    @dessert.update(dessert_params)

    redirect_to cocktail_path(@dessert)
  end

  private

  def dessert_params
    params.require(:dessert).permit(:name, :technique)
  end

end
