class AddPostalCodeToAddress < ActiveRecord::Migration[5.2]
  def change
    add_column :addresses, :zipcode, :string
  end
end
