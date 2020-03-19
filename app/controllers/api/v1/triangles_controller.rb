module Api
  module V1
  	class TrianglesController < ApplicationController
  		def index 
  			????
  		end 	

  		def new
  			@triangle = Triangle.new
  		end

  		def create
  			@sides = {
  				:FirstSide => params[:triangle][:first_side],
  				:SecondSide => params[:triangle][:second_side],
  				:ThirdSide => params[:triangle][:third_side]
  			}
  		end
  	end
  end
end
