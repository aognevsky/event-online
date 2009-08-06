class Event < ActiveRecord::Base
  belongs_to :user
  has_many :notes
  
  validates_presence_of :title
  
  # attr_accessible :title, :description
  
  
  def author?(user)
    self.user == user
  end
  
end
