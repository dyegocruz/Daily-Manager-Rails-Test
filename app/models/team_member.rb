class TeamMember < ActiveRecord::Base
	has_many :users, :class_name => "User", :foreign_key => "id", :primary_key => 'user_id'
	has_many :teams, :class_name => "Team", :foreign_key => "id", :primary_key => 'team_id'
end
