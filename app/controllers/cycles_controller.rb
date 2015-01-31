class CyclesController < ApplicationController
  before_action :set_cycle, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @cycles = Cycle.all
    respond_with(@cycles)
  end

  def show
    respond_with(@cycle)
  end

  def new
    @cycle = Cycle.new
    respond_with(@cycle)
  end

  def edit
  end

  def create
    @cycle = Cycle.new(cycle_params)
    @cycle.save
    respond_with(@cycle)
  end

  def update
    @cycle.update(cycle_params)
    respond_with(@cycle)
  end

  def destroy
    @cycle.destroy
    respond_with(@cycle)
  end

  private
    def set_cycle
      @cycle = Cycle.find(params[:id])
    end

    def cycle_params
      params.require(:cycle).permit(:name, :startcycle, :endcycle)
    end
end
