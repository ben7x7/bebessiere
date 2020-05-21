class CreateMesures < ActiveRecord::Migration[5.2]
  def change
    create_table :mesures do |t|
      t.string :quantity
      t.references :dessert, foreign_key: true
      t.references :ingredient, foreign_key: true

      t.timestamps
    end
  end
end
