class Enrolled < ActiveRecord::Base
  belongs_to :user
  belongs_to :battle
  belongs_to :warship
end
