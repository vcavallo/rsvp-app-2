class User < ActiveRecord::Base
  has_many :invites, :dependent =>:destroy
end
