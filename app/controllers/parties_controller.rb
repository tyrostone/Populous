class PartiesController < ApplicationController
  before_action :set_party, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @parties = Party.all
    respond_with(@parties)
  end

  def show
    respond_with(@party)
  end

  def new
    @party = Party.new
    respond_with(@party)
  end

  def edit
  end

  def create
    @party = Party.new(party_params)
    @party.save
    respond_with(@party)
  end

  def update
    @party.update(party_params)
    respond_with(@party)
  end

  def destroy
    @party.destroy
    respond_with(@party)
  end

  private
    def set_party
      @party = Party.find(params[:id])
    end

    def party_params
      params.require(:party).permit(:country_id, :name)
    end
end
