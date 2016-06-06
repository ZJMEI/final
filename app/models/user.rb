class User < ActiveRecord::Base
  has_many :enrolleds, :dependent => :nullify
  has_many :battles, :through => :enrolleds

  has_many :reviews, :dependent => :nullify
end
