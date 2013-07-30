class Venue < ActiveRecord::Base
  attr_accessible :name

  def self.ordered
    self.order("name ASC")
  end
end
