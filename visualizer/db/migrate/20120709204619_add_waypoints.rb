class AddWaypoints < ActiveRecord::Migration
  def up
    create_table :waypoints, :force => true do |t|
      t.timestamps
    end
    
    create_table :waypoint_association, :force => true do |t|
      t.integer   :distance
      t.timestamps
    end
  end

  def down
  end
end