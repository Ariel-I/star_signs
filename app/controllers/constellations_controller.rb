class ConstellationsController < ApplicationController

    def index
      @constellations = Constellation.all 
    end 

    def new
      @constellation = Constellation.new(constellation_params)
    end 

    def create
        #binding.pry
      @constellation = Constellation.new(constellation_params)
      @constellation.save   
    end 

    def show
      @constellation = Constellation.find_by(id: params[:id])
    end 

    def destroy
     Constellation.find_by(id: params[:id]).destroy
    end 

    private

    def constellation_params
      params.require(:constellation).permit(:name, :symbol, :element, :ruling_planet, :zodiac_quality, :start_date, :end_date )
    end 

end
