class User < ActiveRecord::Base
  has_secure_password
  has_many :tasks
  has_many :team_members 
end