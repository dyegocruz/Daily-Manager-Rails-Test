class AdminController < ApplicationController
  layout "application"
  def index
  	#@teams = Team.where(:id => session[:my_team_id])
  	#@tasks_of_my_team = ActiveRecord::Base.connection.execute("select u.id user_id
  	#																 ,u.login
  	#																 ,tm.is_leader
  	#	 															 ,t.yesterday
  	#	 															 ,t.today
  	#	 															 ,t.impediments
  	#	 															 ,t.task_date
		#														from team_members tm
		#														    ,users u
		#														where tm.user_id = t.user_id
		#														and tm.user_id = u.id																
		#														and tm.team_id = #{session[:my_team][0][0]}")  	
  end
end
