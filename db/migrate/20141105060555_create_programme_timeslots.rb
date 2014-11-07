class CreateProgrammeTimeslots < ActiveRecord::Migration
  def change
    create_table :programme_timeslots do |t|
      t.integer :timeslot_id, :programme_id
      t.timestamps        
    end
  end
end
