class CreateDrinkIngredients < ActiveRecord::Migration[6.0]
  def change
    create_table :drink_ingredients do |t|
      t.references :drink, null: false, foreign_key: true
      t.references :ingredient, null: false, foreign_key: true

      t.timestamps
    end
  end
end
