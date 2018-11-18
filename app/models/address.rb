class Address < ApplicationRecord
  belongs_to :postal_code

  scope :zip_code_like, -> (zip_code) { where('zipcode LIKE ?', "%#{zip_code}%") if zip_code.present? }
  scope :prefecture_like, -> (prefecture) { where(prefecture: prefecture) if prefecture.present? }
  scope :city_like, -> (city) { where('city LIKE ?', "%#{city}%") if city.present? }
  scope :street_like, -> (street) { where('street LIKE ?', "%#{street}%") if street.present? }
end
