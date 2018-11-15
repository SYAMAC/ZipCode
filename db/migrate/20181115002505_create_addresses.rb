class CreateAddresses < ActiveRecord::Migration[5.2]
  def change
    create_table :addresses do |t|
      t.string     :prefecture, null: false
      t.string     :city, null: false
      t.string     :street, null: true
      t.references :postal_code, index: true

      t.timestamps
    end
  end
end
