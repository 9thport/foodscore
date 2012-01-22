class CreateFoods < ActiveRecord::Migration
  def change
    create_table :foods do |t|
      t.string :name
      t.integer :green
      t.integer :vitamin_c
      t.integer :protein
      t.integer :calcium
      t.integer :fruits_and_veg
      t.integer :whole_grain
      t.integer :iron_rich
      t.integer :fat_food
      t.integer :vitamins

      t.timestamps
    end
  end
end
