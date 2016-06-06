class Warship < ActiveRecord::Base

  belongs_to :country

  has_many :equippeds
  has_many :equipments, :through => :equippeds

  has_many :enrolleds

  has_many :reviews
end
