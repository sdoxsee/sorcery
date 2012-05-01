class Authentication < ActiveRecord::Base
  attr_accessible :user_id, :provider, :uid, :access_token
  belongs_to :user
end
