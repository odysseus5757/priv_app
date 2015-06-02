class User < ActiveRecord::Base


  belongs_to :organization
  has_many :matters
  has_many :messages

end
