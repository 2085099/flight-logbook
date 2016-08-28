class AddEngineTypeColumnToLogbooks < ActiveRecord::Migration
  def change
    add_column :logbooks, :engine_type, :string
  end
end
