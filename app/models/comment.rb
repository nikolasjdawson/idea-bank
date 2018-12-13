class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :idea
  
  validates :content, :presence => true
  
  def self.reverse_chron
    order(created_at: :desc)
  end
end
