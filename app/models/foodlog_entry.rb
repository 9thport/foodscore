class FoodlogEntry < ActiveRecord::Base
  belongs_to :foodlog
  belongs_to :food
end
