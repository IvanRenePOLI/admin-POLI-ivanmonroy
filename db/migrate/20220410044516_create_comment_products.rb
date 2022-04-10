class CreateCommentProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :comment_products do |t|
      t.text :comment
      t.integer :star
      t.references :product, null: false, foreign_key: true

      t.timestamps
    end
  end
end
