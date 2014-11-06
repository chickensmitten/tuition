class CreateUserProgrammes < ActiveRecord::Migration
  def change
    create_table :user_programmes do |t|
      t.integer :user_id, :programme_id
      t.timestamps  
    end
  end
end
