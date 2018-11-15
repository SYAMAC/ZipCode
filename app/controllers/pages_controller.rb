class PagesController < ApplicationController
  before_action :postal_code_params, only: [:search_by_postal_code]
  before_action :address_params, only: [:search_by_address]

  def top
  end

  def search_by_postal_code

  end

  def search_by_address
  end

  private

  def postal_code_params
    binding.pry
    params.require(:bill).permit(
      :cd,
      :amount,
      :delivery_on,
      :acceptance_on,
      :payment_type,
      :bill_on,
      :deposit_on,
      :memo,
    )
  end

  def address_params
  end
end
