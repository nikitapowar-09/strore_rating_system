class CreateStores < ActiveRecord::Migration[7.0]
  def change
    create_table :stores do |t|
      t.string :name, null: false
      t.text :description
      t.string :location
      t.string :contact_number
      t.timestamps
    end
  end
end
