class CreateUserTimeslots < ActiveRecord::Migration
  def change
    create_table :user_timeslots do |t|
      t.integer :timeslot_id, :user_id
      t.timestamps      
    end
  end
end
