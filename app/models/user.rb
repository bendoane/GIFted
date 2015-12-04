class User < ActiveRecord::Base
  acts_as_authentic
  has_many :gifs
  validates_presence_of :username, :email, :password, :password_confirmation
end
