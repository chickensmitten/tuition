class CreateProgrammeIntakes < ActiveRecord::Migration
  def change
    create_table :programme_intakes do |t|
      t.integer :intake_id, :programme_id
      t.timestamps      
    end
  end
end
