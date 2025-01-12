class CreateRatings < ActiveRecord::Migration[8.0]
  def change
    create_table :ratings do |t|
      t.integer :user_id
      t.integer :store_id
      t.integer :rating
      t.text :comment

      t.timestamps
    end
  end
end
