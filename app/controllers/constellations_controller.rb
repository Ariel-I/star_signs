class ConstellationsController < ApplicationController

    def index
      @constellations = Constellation.all
    end 

    def new
    end 

    def create
      @constellation = Constellation.new
      if @constellation.save
        redirect_to constellations_path
      else 
        redirect_to root_path
      end
    end 

    def show
      @constellation = Constellation.find_by(id: params[:id])
    end 

    private

    def constellation_params
      params.require(:constellation).permit(:name, :symbol, :element, :ruling_planet, :zodiac_quality, :start_date, :end_date )
    end 

end
