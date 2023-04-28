class CreateCommentProducts < ActiveRecord::Migration[7.0]
  def up
    create_table :comment_products do |t|
      t.text :comment
      t.integer :star

      t.references :client, null: false, foreign_key: true
      t.references :product, null: false, foreign_key: true

      t.timestamps
    end
  end
  def down
    drop_table :comment_products
  end
end
