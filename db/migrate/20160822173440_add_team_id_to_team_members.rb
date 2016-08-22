class AddTeamIdToTeamMembers < ActiveRecord::Migration
  def change
    add_column :team_members, :team_id, :integer
    add_index :team_members, :team_id
  end
end
