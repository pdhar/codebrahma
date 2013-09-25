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
  
  def self.all_friend_posts(user)
    user.relationships
  end
  def self.from_users_followed_by(user)
    followed_user_ids = user.followed_user_ids
    where("user_id IN (?) OR user_id = ?", followed_user_ids, user)
  end
  
  def self.from_users_followers(user)
    followers = user.followers
    where("user_id IN (?) OR user_id = ?", followers, user)
  end
end
