class Warship < ActiveRecord::Base

  belongs_to :country

  has_many :equippeds
  has_many :equipments, :through => :equippeds
end
