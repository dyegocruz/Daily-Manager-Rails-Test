class AdminController < ApplicationController
  layout "application"
  def index    
  	@my_teams = TeamMember.where(:user_id => current_user.id).where(:is_leader => true)        
    @team_member = TeamMember.new
  end
end
