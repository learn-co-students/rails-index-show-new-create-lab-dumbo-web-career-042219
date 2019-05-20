class CouponsController < ApplicationController

  def new
  end

  def create
    coupon = Coupon.create(coupon_code: params[:coupon][:coupon_code], store: params[:coupon][:store])
    # debugger
    redirect_to coupon_url(coupon)
  end

  def index
    @coupons = Coupon.all
  end

  def show
    # debugger
    @coupon = Coupon.find(params[:id])
  end


end