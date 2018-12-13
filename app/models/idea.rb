class Idea < ActiveRecord::Base
  belongs_to :user
  
  validates :title, :problem, :people, :solution, :presence => true
  
end
