class Foodlog < ActiveRecord::Base
  has_many :foodlog_entries
  has_many :foods, :through => :foodlog_entries
end
