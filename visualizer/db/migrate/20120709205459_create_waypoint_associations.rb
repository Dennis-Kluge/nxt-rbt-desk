class CreateWaypointAssociations < ActiveRecord::Migration
  def change
    create_table :waypoint_associations do |t|

      t.timestamps
    end
  end
end
