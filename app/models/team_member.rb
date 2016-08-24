class TeamMember < ActiveRecord::Base
	has_many :users, :class_name => "User", :foreign_key => "id", :primary_key => 'user_id'
	has_many :teams, :class_name => "Team", :foreign_key => "id", :primary_key => 'team_id'

	def get_members_by_team_id_except_leader(team_id,current_user)
		@members_of_team = TeamMember.where(:team_id => team_id).where.not(:user_id => current_user.id)
	end
end
