class CreateTopicIntakes < ActiveRecord::Migration
  def change
    create_table :topic_intakes do |t|
      t.integer :topic_id, :intake_id
      t.timestamps        
    end
  end
end
