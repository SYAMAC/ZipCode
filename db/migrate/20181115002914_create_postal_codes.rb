class CreatePostalCodes < ActiveRecord::Migration[5.2]
  def change
    create_table :postal_codes do |t|
      t.string :postal_code, null: false

      t.timestamps
    end
  end
end
