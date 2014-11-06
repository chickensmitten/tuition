class CreateRoomTimeslots < ActiveRecord::Migration
  def change
    create_table :room_timeslots do |t|
      t.integer :timeslot_id, :room_id
      t.timestamps        
    end
  end
end
