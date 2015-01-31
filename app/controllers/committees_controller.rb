class CommitteesController < ApplicationController
  before_action :set_committee, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @committees = Committee.all
    respond_with(@committees)
  end

  def show
    respond_with(@committee)
  end

  def new
    @committee = Committee.new
    respond_with(@committee)
  end

  def edit
  end

  def create
    @committee = Committee.new(committee_params)
    @committee.save
    respond_with(@committee)
  end

  def update
    @committee.update(committee_params)
    respond_with(@committee)
  end

  def destroy
    @committee.destroy
    respond_with(@committee)
  end

  private
    def set_committee
      @committee = Committee.find(params[:id])
    end

    def committee_params
      params.require(:committee).permit(:level_id, :name)
    end
end
