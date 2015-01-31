class VouchersController < ApplicationController
  before_action :set_voucher, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @vouchers = Voucher.all
    respond_with(@vouchers)
  end

  def show
    respond_with(@voucher)
  end

  def new
    @voucher = Voucher.new
    respond_with(@voucher)
  end

  def edit
  end

  def create
    @voucher = Voucher.new(voucher_params)
    @voucher.save
    respond_with(@voucher)
  end

  def update
    @voucher.update(voucher_params)
    respond_with(@voucher)
  end

  def destroy
    @voucher.destroy
    respond_with(@voucher)
  end

  private
    def set_voucher
      @voucher = Voucher.find(params[:id])
    end

    def voucher_params
      params.require(:voucher).permit(:contribution_id)
    end
end
