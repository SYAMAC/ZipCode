class PagesController < ApplicationController
  before_action :set_prefectures
  before_action :set_by_zipcode, only: [:search_by_zipcode]
  before_action :set_by_address, only: [:search_by_address]

  def top
  end

  def search_by_zipcode
    render :top
  end

  def search_by_address
    render :top
  end

  private

  def set_by_zipcode
    @addresses = if params[:zip_code].blank?
                   nil
                 else
                   Address.zip_code_like(params[:zip_code])
                 end
    @zip_code = params[:zip_code]
  end

  def set_by_address
    @addresses = if params[:prefecture].blank? && params[:city].blank? && params[:street].blank?
                   nil
                 else
                   Address.prefecture_like(params[:prefecture]).city_like(params[:city]).street_like(params[:street])
                 end
    @selected_prefecture = params[:prefecture]
    @city = params[:city]
    @street = params[:street]
  end

  def set_prefectures
    @prefectures = Address.pluck(:prefecture).uniq!
  end
end
