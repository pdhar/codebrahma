class Feed < ActiveRecord::Base
  attr_accessible :post, :user_id
end
