class Unicorn < ApplicationRecord

  validates_presence_of :name
  validates_presence_of :color

  def is_white?
    self.color.downcase == "white"
  end

end
