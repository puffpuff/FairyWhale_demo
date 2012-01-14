class Node < ActiveRecord::Base

  belongs_to :user
  belongs_to :category
  belongs_to :type
  
  has_many :relationships, :foreign_key => "rootNode_id",
                           :dependent => :destroy
  has_many :story, :through => :relationships, 
                     :source => :contentNode
  
  def stories?(contentNode)
    relationships.find_by_contentNode_id(contentNode)
  end

  def story!(contentNode)
    relationships.create!(:contentNode_id => contentNode.id)
  end

  def destroyStory!(contentNode)
    relationships.find_by_contentNode_id(contentNode).destroy
  end
end
