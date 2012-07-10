class Waypoint < ActiveRecord::Base
  
  has_many :waypoint_associations
  has_many :siblings, :through => :waypoint_associations
  
  def self.random
    if (c = count) != 0
      find(:first, :offset =>rand(c))
    end
  end
      
end
