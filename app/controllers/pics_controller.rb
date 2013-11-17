# We used this to create ways for information to get put into the DB
# This also allows us to display the information in the DB
#Controller
#@pics communicates with "model" that communicates with "DB"

class PicsController < ApplicationController

	def index

		@pics = Pic.all
	
	end

	def new

		@pic = Pic.new

	end

	def create
		@pic = Pic.create(pic_params)
		redirect_to pics_path
	end

	private
		def pic_params
			params.require(:pic).permit(:lesson, :image, :emotion, :learned)
	end

end
