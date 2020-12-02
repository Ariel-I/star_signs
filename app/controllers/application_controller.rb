class ApplicationController < ActionController::Base

    def welcome
        @constellations = Constellation.all
    end 
    
end
