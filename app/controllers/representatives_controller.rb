class RepresentativesController < ApplicationController
  before_action :set_representative, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @representatives = Representative.all
    respond_with(@representatives)
  end

  def show
    respond_with(@representative)
  end

  def new
    @representative = Representative.new
    respond_with(@representative)
  end

  def edit
  end

  def create
    @representative = Representative.new(representative_params)
    @representative.save
    respond_with(@representative)
  end

  def update
    @representative.update(representative_params)
    respond_with(@representative)
  end

  def destroy
    @representative.destroy
    respond_with(@representative)
  end

  private
    def set_representative
      @representative = Representative.find(params[:id])
    end

    def representative_params
      params.require(:representative).permit(:district_id, :party_id, :fname, :lname, :phone, :email)
    end
end
