class Message < ActiveRecord::Base

  belongs_to :matter
  belongs_to :user
  belongs_to :organization
  belongs_to :classification

end
