class CreateIntakes < ActiveRecord::Migration
  def change
    create_table :intakes do |t|
      t.string :name
      t.integer :programme_id, :topic_id
      t.timestamps        
    end
  end
end