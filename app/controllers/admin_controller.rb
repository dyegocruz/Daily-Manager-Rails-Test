class AdminController < ApplicationController
  layout "application"
  def index
  	#Search Teams of Loged Leader
  	@my_teams = TeamMember.where(:user_id => current_user.id).where(:is_leader => true)
  	
  	if params[:task_date]
  		@task_date = params[:task_date]
  	else
  		@task_date = Date.today
  	end

  end
end
