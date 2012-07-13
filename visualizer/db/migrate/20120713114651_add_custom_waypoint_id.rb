class AddCustomWaypointId < ActiveRecord::Migration
  def up
    add_column :waypoints, :waypoint_id, :integer
  end

  def down
    remove_column :waypoints, :waypoint_id
  end
end