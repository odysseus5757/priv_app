class Message < ActiveRecord::Base

  validates :name, :presence => true, :uniqueness => { :scope => :matter}

  has_many :users
  belongs_to :matter
  has_many :classifications

end
