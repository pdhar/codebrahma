class Feed < ActiveRecord::Base
  attr_accessible :post, :user_id
  belongs_to :user,:foreign_key => "user_id"
  validates :user_id, presence: true
  
  def user_from 
    self.user.name
  end 
  
  def attributes
    super.merge({'user_from' => user_from})
  end
end
