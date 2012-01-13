class User < ActiveRecord::Base
  has_many :nodes
  has_many :comments
end
