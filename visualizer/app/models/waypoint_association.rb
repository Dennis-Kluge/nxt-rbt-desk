class WaypointAssociation < ActiveRecord::Base

  belongs_to :waypoint
  belongs_to :sibling, :class_name => 'Waypoint'
  
  attr_accessible :waypoint_id, :sibling_id
  validates_uniqueness_of :waypoint_id, :scope => :sibling_id
  
end
