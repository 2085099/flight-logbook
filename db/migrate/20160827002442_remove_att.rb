class RemoveAtt < ActiveRecord::Migration
  def change
  	add_column :logbooks, :night_landing, :integer
  end
end
