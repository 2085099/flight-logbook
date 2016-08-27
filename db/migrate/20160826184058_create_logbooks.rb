class CreateLogbooks < ActiveRecord::Migration
  def change
    create_table :logbooks do |t|
      t.date :date
      t.string :departurePlace
      t.time :departureTime
      t.string :arrivalPlace
      t.time :arrivalTime
      t.string :aircraftType
      t.string :aircraftReg
      t.boolean :single_engine
      t.boolean :multi_engine
      t.time :multipilot_time
      t.time :flightTime
      t.string :PIC
      t.integer :day_takeoff
      t.integer :night_takeoff
      t.integer :day_landing
      t.integer :day_landing
      t.time :night_time
      t.time :ifr_time
      t.time :pic_time
      t.time :copilot_time
      t.time :dual_time
      t.time :instructor_time
      t.date :sim_date
      t.string :simtype
      t.time :sim_time
      t.string :remarks

      t.timestamps null: false
    end
  end
end
