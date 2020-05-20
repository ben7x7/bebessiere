class CreateDesserts < ActiveRecord::Migration[5.2]
  def change
    create_table :desserts do |t|
      t.string :name
      t.text :technique

      t.timestamps
    end
  end
end
