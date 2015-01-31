class LevelsController < ApplicationController
  before_action :set_level, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @levels = Level.all
    respond_with(@levels)
  end

  def show
    respond_with(@level)
  end

  def new
    @level = Level.new
    respond_with(@level)
  end

  def edit
  end

  def create
    @level = Level.new(level_params)
    @level.save
    respond_with(@level)
  end

  def update
    @level.update(level_params)
    respond_with(@level)
  end

  def destroy
    @level.destroy
    respond_with(@level)
  end

  private
    def set_level
      @level = Level.find(params[:id])
    end

    def level_params
      params.require(:level).permit(:name, :short)
    end
end
