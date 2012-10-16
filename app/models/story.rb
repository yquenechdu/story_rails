class Story < ActiveRecord::Base
  attr_accessible :action, :confirmation, :role, :bdds_attributes, :cas_attributes
  has_many :cas 
  has_many :bdds

  accepts_nested_attributes_for :bdds
  accepts_nested_attributes_for :cas
  validates_presence_of :role 
  
end
