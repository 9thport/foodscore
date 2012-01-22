class AddServingValueToFoods < ActiveRecord::Migration
  def up
    add_column :foods, :serving_value, :string
  end
  
  def down
    remove_column :foods, :serving_value
  end
end
