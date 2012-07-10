class WaypointAssociation < ActiveRecord::Base

  belongs_to :waypoint
  belongs_to :sibling, :class_name => 'Waypoint'
  
  attr_accessible :waypoint_id, :sibling_id
end
