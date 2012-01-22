class AddDailyNeedToFoods < ActiveRecord::Migration
  def up
    add_column :foods, :daily_need, :integer
  end
  
  def down
    remove_column :foods, :daily_need
  end
end
