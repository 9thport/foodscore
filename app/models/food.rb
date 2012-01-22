class Food < ActiveRecord::Base
  has_many :foodlog_entries
  has_many :foodlogs, :through => :foodlog_entries
end
