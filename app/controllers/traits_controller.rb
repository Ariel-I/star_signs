class TraitsController < ApplicationController

    def new 
      @trait = Trait.new(trait_params)
    end

    def create
        #binding.pry
      @trait = Trait.new(trait_params)
      @trait.save
    end 

    def show
      @trait = Trait.find_by(id: params[:id])
    end 

    private

    def trait_params
      params.require(:trait).permit(:strengths, :weaknesses, :compatibal_signs, :description)
    end 

end
