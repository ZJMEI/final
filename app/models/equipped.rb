class Equipped < ActiveRecord::Base

  belongs_to :warship
  belongs_to :equipment

end
