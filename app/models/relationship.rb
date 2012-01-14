class Relationship < ActiveRecord::Base
  attr_accessible :contentNode_id
 
   
  belongs_to :rootNode, :class_name => "Node"
  belongs_to :contentNode, :class_name => "Node"

  validates :rootNode_id, :presence => true
  validates :contentNode_id, :presence => true
end
