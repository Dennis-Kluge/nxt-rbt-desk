class WaypointsController < ApplicationController
  def index
    gon.waypoints = Waypoint.all
    
    # waypoint_hash = Array.new
    #     
    #     waypoints.each do |waypoint|
    #       waypoint_hash.push([waypoint.id, waypoint.x, waypoint.y])
    #     end
    #     logger.debug(waypoint_hash[1])
    #     gon.waypoints = waypoint_hash
  end
end
