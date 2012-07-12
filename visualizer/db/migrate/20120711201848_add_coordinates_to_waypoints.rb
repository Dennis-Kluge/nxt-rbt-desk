class AddCoordinatesToWaypoints < ActiveRecord::Migration
  def change
    add_column :waypoints, :x, :Integer
    add_column :waypoints, :y, :Integer
  end
end
