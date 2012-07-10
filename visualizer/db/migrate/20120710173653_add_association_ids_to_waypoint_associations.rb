class AddAssociationIdsToWaypointAssociations < ActiveRecord::Migration
  def change
    add_column :waypoint_associations, :waypoint_id, :Integer
    add_column :waypoint_associations, :sibling_id, :Integer
  end
end
