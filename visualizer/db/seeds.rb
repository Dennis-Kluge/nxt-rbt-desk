# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

10.times do
  Waypoint.create(:x => rand(-10..10), :y => rand(-10..10) )
end

10.times do
  WaypointAssociation.create(:waypoint_id => Waypoint.random.id, :sibling_id =>  Waypoint.random.id)
end