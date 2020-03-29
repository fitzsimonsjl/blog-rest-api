module Api
  module V1
  	class TrianglesController < ApplicationController
  		def index
  		end

  		def create
  			@sides = {
  				:FirstSide => params[:triangle][:first_side],
  				:SecondSide => params[:triangle][:second_side],
  				:ThirdSide => params[:triangle][:third_side]
  			}
  		end

      private

      def triangle_params
        params.require(:triangle).permit(:first_side, :second_side, :third_side)
      end
  	end
  end
end
