class Micropost < ActiveRecord::Base
  attr_accessible :content, :id, :user
  validates :content, :length => { :maximum => 10 }
end
