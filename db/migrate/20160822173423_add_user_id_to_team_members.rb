class AddUserIdToTeamMembers < ActiveRecord::Migration
  def change
    add_column :team_members, :user_id, :integer
    add_index :team_members, :user_id
  end
end
