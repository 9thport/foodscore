class CreateFoodlogs < ActiveRecord::Migration
  def change
    create_table :foodlogs do |t|
      t.date :entry_date
      t.integer :water
      t.integer :leafy_green
      t.integer :vitamin_c
      t.integer :calories
      t.integer :protein
      t.integer :calcium
      t.integer :fruit_and_veg
      t.integer :whole_grain
      t.integer :iron_rich
      t.integer :fat_foods
      t.integer :vitamins

      t.timestamps
    end
  end
end
