class WaypointsController < ApplicationController
  def index
    gon.waypoints = Waypoint.all
    gon.edges = WaypointAssociation.all
  end
end
