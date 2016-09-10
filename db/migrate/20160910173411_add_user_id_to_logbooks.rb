class AddUserIdToLogbooks < ActiveRecord::Migration
  def change
    add_column :logbooks, :user_id, :integer
  end
end
