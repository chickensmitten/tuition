class CreateCentres < ActiveRecord::Migration
  def change
    create_table :centres do |t|
      t.string :room, :day_time
      t.integer :programme_id, :user_id
      t.timestamps    
    end
  end
end
