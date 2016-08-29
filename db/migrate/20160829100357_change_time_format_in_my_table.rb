class ChangeTimeFormatInMyTable < ActiveRecord::Migration
  def change
  	change_column :logbooks, :multipilot_time, :float
  	change_column :logbooks, :flightTime, :float
  	change_column :logbooks, :night_time, :float
   	change_column :logbooks, :ifr_time, :float
   	change_column :logbooks, :pic_time, :float
   	change_column :logbooks, :copilot_time, :float
   	change_column :logbooks, :dual_time, :float
   	change_column :logbooks, :instructor_time, :float
    change_column :logbooks, :sim_time, :float






  end
end
