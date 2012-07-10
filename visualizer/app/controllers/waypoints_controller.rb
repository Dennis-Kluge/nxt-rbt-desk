class WaypointsController < ApplicationController
  def index
    gon.waypoints = Waypoint.select(:id).map(&:id)
  end
end
