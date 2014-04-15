class PricesController < ApplicationController
  def index
    id = params[:id] || Moped::BSON::ObjectId.from_time(Time.new(2013,1,1))
    @prices = Price.where(:id.gt => id).reverse

    respond_to do |format|
      format.html
      format.js
    end
  end

  def submit
    @price = Price.create(
      company:  params[:c],
      store:    params[:s],
      product:  params[:p],
      value:    params[:v],
      ip:       request.remote_ip)
  end

  def new
    @price = Price.new
  end

  def encode
    @price = Price.new(params[:price])

    respond_to do |format|
      format.html
      format.svg { render qrcode: "http://198.211.97.159:2015/submit?c=#{@price.company}&s=#{@price.store}&p=#{@price.product}&v=#{@price.value}", unit: 3, level: :h }
    end
  end
end
