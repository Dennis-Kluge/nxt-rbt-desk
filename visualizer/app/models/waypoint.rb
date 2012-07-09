class Waypoint < ActiveRecord::Base
  
  has_many :waypoint_associations
  has_many :siblings, :through => :waypoint_associations
  
end
