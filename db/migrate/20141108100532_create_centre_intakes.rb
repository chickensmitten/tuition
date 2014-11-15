class CreateCentreIntakes < ActiveRecord::Migration
  def change
    create_table :centre_intakes do |t|
      t.integer :centre_id, :intake_id
      t.timestamps        
    end
  end
end
