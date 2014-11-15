class CreateKlassTimeslots < ActiveRecord::Migration
  def change
    create_table :klass_timeslots do |t|
      t.integer :klass_id, :timeslot_id
      t.timestamps        
    end
  end
end
