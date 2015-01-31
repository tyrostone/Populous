class SeatsController < ApplicationController
  before_action :set_seat, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @seats = Seat.all
    respond_with(@seats)
  end

  def show
    respond_with(@seat)
  end

  def new
    @seat = Seat.new
    respond_with(@seat)
  end

  def edit
  end

  def create
    @seat = Seat.new(seat_params)
    @seat.save
    respond_with(@seat)
  end

  def update
    @seat.update(seat_params)
    respond_with(@seat)
  end

  def destroy
    @seat.destroy
    respond_with(@seat)
  end

  private
    def set_seat
      @seat = Seat.find(params[:id])
    end

    def seat_params
      params.require(:seat).permit(:district_id, :level_id, :cycle_id, :elected, :name)
    end
end
