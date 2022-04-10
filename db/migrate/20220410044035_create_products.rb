class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.string :name
      t.text :description
      t.decimal :price
      t.string :color
      t.decimal :available
      t.string :brand
      t.text :image

      t.timestamps
    end
  end
end
