class FarmersController < ApplicationController

  def weather
  end

  def index
    @farmers = Farmer.all
  end 

  def new
    @farmer = Farmer.new
  end

  def create
    @farmer = current_user.farmers.new(farmer_params)
    respond_to do |format|
    if @farmer.save
        format.html { redirect_to @farmer, notice: "Thank you for giving and for supporting the community and adding a farmers market"}
        format.js {}
        format.json {render json: @farmer, status: :created, location: @farmer}
      else
        format.html { redirect_to @farmer, notice: "Sorry, your farmer market was not added"}
        format.js {}
        format.json { render json: @farmer, notice: "Please try to add a market again"}
      end
    end
  end

  private

  def farmer_params
    params.require(:farmer).permit(:farmer_market_name, :schedule, :price_range)
  end

end
