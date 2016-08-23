class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
         #,:authentication_keys => {email: true, login: true}
	has_many :tasks
	has_many :teams
	belongs_to :roles
end
