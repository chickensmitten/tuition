class CreateCentreTimeslots < ActiveRecord::Migration
  def change
    create_table :centre_timeslots do |t|
      t.integer :centre_id, :timeslot_id
      t.timestamps         
    end
  end
end
