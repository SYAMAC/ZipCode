class PostalCode < ApplicationRecord
  has_one :address
end
