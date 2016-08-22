class SessionsController < ApplicationController
  skip_before_action :authorize
  def new
  end

  def create
  	user = User.find_by(login: params[:login])
  	if user and user.authenticate(params[:password])
      #get id of my team
      #@my_team = ActiveRecord::Base.connection.execute("SELECT t.id team_id, tm.is_leader
      #                                                    FROM team_members tm
      #                                                         ,teams t
      #                                                    WHERE tm.team_id = t.id
      #                                                    and user_id = #{user.id}")
      #session[:my_team] = @my_team;
  	  session[:user_id] = user.id
  	  redirect_to admin_url
  	else
  	  redirect_to login_url, alert:"Invalide username or password"
  	end
  end

  def destroy
  	session[:user_id] = nil
  	redirect_to login_url, alert:"Succefuly logged out"
  end
end
