class Waypoint < ActiveRecord::Base
  
  has_many :waypoint_associations
  has_many :siblings, :through => :waypoint_associations
  
  attr_accessible :x, :y
  
  def self.random
    if (c = count) != 0
      find(:first, :offset =>rand(c))
    end
  end
  
  def x
    self.read_attribute(:x) / 50.0
  end
  
  def y
    self.read_attribute(:y) / 50.0
  end
      
end
