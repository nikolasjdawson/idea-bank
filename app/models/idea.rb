class Idea < ActiveRecord::Base
  belongs_to :user
  has_many :comments
  
  validates :title, :problem, :people, :solution, :presence => true
  
end
