class Bdd < ActiveRecord::Base
  attr_accessible :given, :story_id, :then, :when
  belongs_to :story
end
