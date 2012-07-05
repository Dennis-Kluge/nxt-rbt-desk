
class Waypoint
	include Mongoid::Document
	include Mongoid::Timestamps

	field :x, type: Float
	field :y, type: Float
	field :feature, type: Symbol 	
	
end
