class Idea < ActiveRecord::Base
  belongs_to :user
  has_many :comments
  
  acts_as_votable
  
  validates :title, :problem, :people, :solution, :presence => true
  
end
