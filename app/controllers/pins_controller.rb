class PinsController < ApplicationController
	before_action :f_pin, only: [:show,:edit,:update,:destroy]

	def index
		@pins = Pin.all
	end
	def show
	end
	def new
		@pin = Pin.new
	end
	def create
		@pins = Pin.new(pin_params)
		if @pin.save
			redirect_to @pin, notice: "Congrats!"
		else
			redirect_to 'new'
		end
	end

	def edit
	end

	def update
		if @pin.update(pin_params)
			redirect_to @pin, notice: "Congrats!"
		else
			redirect_to 'edit'
		end
	end

	def destroy
		@pin.destroy
		redirect_to 'index'
	end

	private
	def f_pin
		@pin = Pin.find(params[:id])
	end
	def pin_params
		params.require(:pin).permit(:title,:description)
	end
end
