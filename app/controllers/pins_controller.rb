class PinsController < ApplicationController
	before_action :f_pin, only: [:show,:edit,:update,:destroy, :upvote, :downvote]

	def index
		@pins = Pin.all.order(:cached_weighted_score => :desc)
	end
	def show
	end
	def new
		@pin = Pin.new
	end

	def create
		debugger
		@pin = current_user.pins.build(pin_params)
		@pin.pix = params[:pin][:pix]
		if @pin.save
			redirect_to pin_path(@pin), notice: "Congrats!"
		else
			render :new
		end
	end

	def edit
	end

	def update
		if @pin.update(pin_params)
			redirect_to @pin, notice: "Congrats!"
		else
			render :edit
		end
	end

	def destroy
		@pin.destroy
		redirect_to :index
	end

	def upvote
		@pin.upvote_from current_user
		redirect_to :back
	end
	def downvote
		@pin.downvote_from current_user
		redirect_to :back
	end

	private
	def f_pin
		@pin = Pin.find(params[:id])
	end
	def pin_params
		params.require(:pin).permit(:title,:description, :pic, :pix)
	end
end
