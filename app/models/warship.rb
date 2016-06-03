class Warship < ActiveRecord::Base
  has_many :equippeds
  has_many :equipments, :through => :equippeds
end
