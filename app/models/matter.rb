class Matter < ActiveRecord::Base

  validates :name, :presence => true, :uniqueness => { :scope => :organization}

  belongs_to :user_name

end
