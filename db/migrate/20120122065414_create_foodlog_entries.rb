class CreateFoodlogEntries < ActiveRecord::Migration
  def change
    create_table :foodlog_entries do |t|
      t.integer :foodlog_id
      t.integer :food_id

      t.timestamps
    end
  end
end
