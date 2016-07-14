class PinsController < ApplicationController
	before_action :f_pin, only: [:show,:edit,:update,:destroy]

	def index
		@pin = Pin.new
	end
	def show
	end
	def new
	end
	def create
	end
	def edit
	end
	def update
	end
	def destroy
	end

	private
	def f_pin
		@pin = Pin.find(params[:id])
	end
	def pin_params
		params.require(:pin).permit(:title,:description)
	end
end
