class Ca < ActiveRecord::Base
  attr_accessible :criteria, :story_id
  belongs_to :story
end
