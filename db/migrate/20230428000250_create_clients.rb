class CreateClients < ActiveRecord::Migration[7.0]
  def up
    create_table :clients do |t|
      t.string :name
      t.string :email

      t.timestamps
    end
  end
  def down
    drop_table :clients
  end
end
