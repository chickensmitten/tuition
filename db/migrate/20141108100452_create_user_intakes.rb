class CreateUserIntakes < ActiveRecord::Migration
  def change
    create_table :user_intakes do |t|
      t.integer :user_id, :intake_id
      t.timestamps        
    end
  end
end
