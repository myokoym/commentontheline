class User < ActiveRecord::Base
  has_many :documents
  has_many :comments
end
