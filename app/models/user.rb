class User < ActiveRecord::Base

  validates :username, :presence => true, :uniqueness => { :scope => :user_org }

  has_many :matters

end
