class CreateTopicTimeslots < ActiveRecord::Migration
  def change
    create_table :topic_timeslots do |t|
      t.integer :topic_id, :timeslot_id
      t.timestamps       
    end
  end
end
