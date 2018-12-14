class Idea < ActiveRecord::Base
  belongs_to :user
  has_many :comments
  
  acts_as_votable
  
  def self.popular 
    where(created_at: 7.days.ago..DateTime.now)
  end
  
  validates :title, :problem, :people, :solution, :presence => true
  
end
